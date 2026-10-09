import 'dart:convert';

import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaGraph, SchemaTable;
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';
import 'package:vyuh_diagram_core/extension_api.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_table/vyuh_diagram_extension_table.dart';
import 'package:vyuh_diagram_extension_table/extension_api.dart';

/// Maps schema semantics onto Vyuh's native shapes, table content and ports.
/// Rendering, editing, layout and history belong to Vyuh Diagram.
abstract final class SchemaDiagram {
  static const tableShapeType = 'podlens.table';
  static const nodeWidth = 360.0;
  static const rowHeight = 28.0;
  static const headerHeight = 38.0;

  static SchemaGraph graphFromJson(String json) =>
      SchemaGraph.fromJson(jsonDecode(json) as Map<String, dynamic>);

  static Future<DiagramController> build(
    SchemaGraph graph, {
    DiagramController? controller,
    Layout? layout,
  }) async {
    final target =
        controller ??
        DiagramController(
          configuration: DiagramConfiguration(
            extensions: [
              SchemaTableExtension(),
              const LayoutExtension(),
            ],
          ),
        );
    final byName = {for (final table in graph.tables) table.name: table};
    target.edits.batch('Import schema', () {
      for (final table in graph.tables) {
        target.edits.createShape(
          tableShapeType,
          id: table.name,
          at: DiagramPoint.zero,
          size: DiagramSize(nodeWidth, heightOf(table)),
          style: ShapeStyle(
            fill: const DiagramColor(0xffffffff),
            stroke: moduleColor(table.schema),
            strokeWidth: 2,
            cornerRadius: 8,
          ),
          values: {'schema': table.toJson()},
          textStory: _story(table),
          ports: portsFor(table),
          select: false,
        );
      }
      for (final table in graph.tables) {
        for (final fk in table.foreignKeys) {
          final parent = byName[fk.refTable];
          if (parent == null) continue;
          final childColumn = fk.columns.firstOrNull;
          final parentColumn = fk.refColumns.firstOrNull ?? 'id';
          final edge = target.edits.connect(
            table.name,
            parent.name,
            fromPort: table.columns.any((c) => c.name == childColumn)
                ? _portId(table.name, childColumn!, 'r')
                : null,
            toPort: parent.columns.any((c) => c.name == parentColumn)
                ? _portId(parent.name, parentColumn, 'l')
                : null,
            select: false,
          )..requireAllowed();
          final edgeId = edge.id!;
          // A composite constraint stays one relation; label every column pair.
          if (fk.columns.length > 1) {
            target.edits.addConnectorLabel(
              edgeId,
              text: '${fk.columns.join(', ')} → ${fk.refColumns.join(', ')}',
              fraction: 0.5,
            );
          }
          final unique =
              fk.columns.length == 1 &&
                  table.columns.any(
                    (c) =>
                        c.name == childColumn &&
                        (c.isUnique ||
                            (c.isPrimaryKey &&
                                table.columns
                                        .where((column) => column.isPrimaryKey)
                                        .length ==
                                    1)),
                  ) ||
              table.indexes.any(
                (index) =>
                    index.unique &&
                    (index.predicate == null || index.predicate!.isEmpty) &&
                    index.columns.length == fk.columns.length &&
                    index.columns.toSet().containsAll(fk.columns),
              );
          target.edits.addConnectorLabel(
            edgeId,
            text: unique ? '1' : 'N',
            fraction: 0.08,
            offset: const DiagramPoint(0, -12),
          );
          target.edits.addConnectorLabel(
            edgeId,
            text: '1',
            fraction: 0.92,
            offset: const DiagramPoint(0, -12),
          );
        }
      }
    }).requireAllowed();
    await target.layout(
      layout ??
          Layout.layered(
            direction: LayoutDirection.left,
            gap: 56,
            layerGap: 160,
          ),
    );
    target.clearSelection();
    return target;
  }

  static double heightOf(SchemaTable table) =>
      headerHeight +
      (table.columns.isEmpty ? 1 : table.columns.length) * rowHeight;

  static TextStory _story(SchemaTable table) {
    final foreignKeys = {for (final fk in table.foreignKeys) ...fk.columns};
    DiagramTableCell cell(String row, String column, String text) {
      final id = '${table.name}::$row::$column';
      return DiagramTableCell(
        id: id,
        blocks: [
          TextParagraph(
            id: '$id-text',
            slotId: id,
            runs: [TextRun(text, fontSize: 11)],
          ),
        ],
      );
    }

    return TextStory(
      id: '${table.name}-story',
      blocks: [
        TextParagraph(
          id: '${table.name}-title',
          slotId: 'title',
          role: TextRole.title,
          runs: [
            TextRun(
              table.name,
              fontSize: 13,
              color: const DiagramColor(0xffffffff),
            ),
          ],
        ),
      ],
      contents: [
        TextTable(
          id: '${table.name}-columns',
          slotId: 'columns',
          cellPadding: 4,
          columns: [
            DiagramTableColumn(id: '${table.name}::track-key', width: 30),
            DiagramTableColumn(id: '${table.name}::track-name', width: 210),
            DiagramTableColumn(id: '${table.name}::track-type', width: 120),
          ],
          rows: [
            for (final column in table.columns)
              DiagramTableRow(
                id: '${table.name}::${column.name}',
                height: rowHeight,
                cells: [
                  cell(
                    column.name,
                    'key',
                    column.isPrimaryKey
                        ? 'PK'
                        : foreignKeys.contains(column.name)
                        ? 'FK'
                        : '',
                  ),
                  cell(column.name, 'name', column.name),
                  cell(
                    column.name,
                    'type',
                    '${column.dbType}${column.isNullable ? '?' : ''}',
                  ),
                ],
              ),
            if (table.columns.isEmpty)
              DiagramTableRow(
                id: '${table.name}::empty',
                height: rowHeight,
                cells: [
                  cell('empty', 'key', ''),
                  cell('empty', 'name', 'No columns'),
                  cell('empty', 'type', ''),
                ],
              ),
          ],
        ),
      ],
    );
  }

  static String _portId(String table, String column, String side) =>
      '$table::$column::$side';

  static List<Port> portsFor(SchemaTable table) => [
    for (var i = 0; i < table.columns.length; i++)
      for (final side in const [PortSide.left, PortSide.right])
        Port(
          id: _portId(
            table.name,
            table.columns[i].name,
            side == PortSide.left ? 'l' : 'r',
          ),
          side: side,
          offsetKind: PortOffsetMode.distanceFromStart,
          offset: headerHeight + i * rowHeight + rowHeight / 2,
          width: 8,
          height: 8,
        ),
  ];

  static DiagramColor moduleColor(String module) =>
      DiagramColor(switch (module) {
        'public' => 0xff64748b,
        'sso' => 0xff2563eb,
        'elog' => 0xff059669,
        _ => 0xff7c3aed,
      });
}

/// A schema-specific composition of native title and table parts.
/// All cell rendering, geometry, selection and persistence use Vyuh's table.
final class SchemaTableExtension extends DiagramExtension {
  SchemaTableExtension()
    : super(
        id: 'podlens.tables',
        dependencies: [TableExtension(tool: false)],
        shapes: [
          ShapeDefinition(
            type: SchemaDiagram.tableShapeType,
            name: 'Schema table',
            values: {'schema': ObjectValueField(defaultValue: {})},
            connection: ShapeConnectionDefinition.instancePorts(),
            behavior: const ShapeBehavior(resizable: false, rotatable: false),
            body: ShapeColumn([
              ShapeSized(
                extent: SchemaDiagram.headerHeight,
                child: const ShapeSurface(
                  style: ShapeStyle(
                    fill: DiagramColor(0xff1e293b),
                    strokeWidth: 0,
                  ),
                  child: ShapeText(
                    'title',
                    role: TextRole.title,
                    editable: false,
                  ),
                ),
              ),
              const ShapeTable(
                'columns',
                columns: 3,
                textType: PlainTextDefinition(maxLines: 1),
                controls: ShapeTableControls(
                  rowLabel: 'column',
                  columnLabel: 'field',
                  capabilities: ShapeTableCapabilities(
                    resizeTable: false,
                    resizeRows: false,
                    resizeColumns: false,
                    mergeCells: false,
                    mergeRows: false,
                    unmergeCells: false,
                  ),
                ),
              ),
            ]),
          ),
        ],
      );
}
