import 'dart:convert';

import 'package:serverpod_lens_schema/serverpod_lens_schema.dart'
    show SchemaGraph, SchemaTable, SchemaColumn, SchemaRelationshipInfo;
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';
import 'package:vyuh_diagram_core/extension_api.dart';
import 'package:vyuh_diagram_core/adapter.dart'
    show DiagramTransaction, InsertElementsStep, ReplaceElementStep;
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_table/vyuh_diagram_extension_table.dart';
import 'package:vyuh_diagram_extension_table/extension_api.dart';

enum SchemaDetailLevel {
  names('Names'),
  keys('Keys'),
  allFields('All fields');

  const SchemaDetailLevel(this.label);
  final String label;
}

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
    int? columnLimit,
    SchemaDetailLevel detailLevel = SchemaDetailLevel.allFields,
  }) async {
    final target =
        controller ??
        DiagramController(
          configuration: DiagramConfiguration(
            extensions: [
              SchemaTableExtension(detailLevel: detailLevel),
              const LayoutExtension(),
            ],
          ),
        );
    final previews = {
      for (final table in graph.tables)
        table.name: table.copyWith(
          columns: detailLevel == SchemaDetailLevel.names
              ? []
              : detailLevel == SchemaDetailLevel.keys
              ? [
                  for (final column in table.columns)
                    if (column.isPrimaryKey ||
                        table.foreignKeys.any(
                          (key) => key.columns.contains(column.name),
                        ))
                      column,
                ]
              : columnLimit == null
              ? table.columns
              : _previewColumns(table, columnLimit),
        ),
    };
    final byName = previews;
    final originals = {for (final table in graph.tables) table.name: table};
    final elements = <DiagramElement>[];
    for (final source in graph.tables) {
      final table = previews[source.name]!;
      elements.add(
        ShapeElement(
          id: table.name,
          type: tableShapeType,
          frame: DiagramRect.fromLTWH(
            0,
            0,
            nodeWidth,
            detailLevel == SchemaDetailLevel.names
                ? headerHeight
                : heightOf(table),
          ),
          style: const ShapeStyle(
            fill: DiagramColor(0xffffffff),
            stroke: DiagramColor(0xffd4d4d4),
            strokeWidth: 1,
            cornerRadius: 6,
          ),
          values: {'schema': source.toJson()},
          textStory: _story(
            table,
            totalColumns: source.columns.length,
            headerOnly: detailLevel == SchemaDetailLevel.names,
          ),
          ports: portsFor(table),
        ),
      );
    }
    for (final table in previews.values) {
      for (var index = 0; index < table.foreignKeys.length; index++) {
        final fk = table.foreignKeys[index];
        final parent = byName[fk.refTable];
        if (parent == null) continue;
        if (fk.columns.length != fk.refColumns.length) {
          throw FormatException(
            'Foreign key ${fk.name} has mismatched column pairs',
          );
        }
        final cardinality = SchemaRelationshipInfo(originals[table.name]!, fk);
        for (
          var pair = 0;
          pair < (fk.columns.isEmpty ? 1 : fk.columns.length);
          pair++
        ) {
          final childColumn = fk.columns.isEmpty ? null : fk.columns[pair];
          final parentColumn = fk.refColumns.isEmpty
              ? 'id'
              : fk.refColumns[pair];
          final baseId = '${table.name}::relation::$index';
          final id = fk.columns.length > 1 ? '$baseId::pair::$pair' : baseId;
          ConnectorLabel label(
            String suffix,
            String text,
            double fraction,
            DiagramPoint offset,
          ) => ConnectorLabel(
            id: '$id::$suffix',
            fraction: fraction,
            offset: offset,
            story: TextStory(
              id: '$id::$suffix-story',
              blocks: [
                TextParagraph(
                  id: '$id::$suffix-paragraph',
                  runs: [TextRun(text)],
                ),
              ],
            ),
          );
          elements.add(
            ConnectorElement(
              id: id,
              start: BoundEndpoint(
                elementId: table.name,
                portId:
                    table.columns.any((column) => column.name == childColumn)
                    ? _portId(table.name, childColumn!, 'r')
                    : _tablePortId(table.name, 'r'),
              ),
              end: BoundEndpoint(
                elementId: parent.name,
                portId:
                    parent.columns.any((column) => column.name == parentColumn)
                    ? _portId(parent.name, parentColumn, 'l')
                    : _tablePortId(parent.name, 'l'),
              ),
              labels: [
                if (fk.columns.length > 1)
                  label(
                    'columns',
                    '$childColumn → $parentColumn (${pair + 1}/${fk.columns.length})',
                    .5,
                    DiagramPoint.zero,
                  ),
                label(
                  'from',
                  cardinality.children,
                  .08,
                  const DiagramPoint(0, -12),
                ),
                label(
                  'to',
                  cardinality.parent,
                  .92,
                  const DiagramPoint(0, -12),
                ),
              ],
            ),
          );
        }
      }
    }
    // Admit the native document once, rather than resolving an intermediate
    // document after every shape, edge and label mutation.
    target.edits
        .dispatch(
          DiagramTransaction(
            label: 'Import schema',
            steps: [InsertElementsStep(elements)],
          ),
          expectedRevision: target.document.revision,
        )
        .requireAllowed();
    // Single-line native table rows use measured heights, not authored rowHeight.
    // Bind ports to the resolved cell centres rather than approximating offsets.
    final connectedPorts = <String>{};
    for (final edge in target.document.elements.whereType<ConnectorElement>()) {
      for (final endpoint in [edge.start, edge.end]) {
        if (endpoint is BoundEndpoint && endpoint.portId != null) {
          connectedPorts.add(endpoint.portId!);
        }
      }
    }
    final aligned = <String, List<Port>>{};
    for (final table in previews.values) {
      final layout = target.resolvedTable(table.name, '${table.name}-columns');
      if (layout == null) continue;
      final top = target.scene.shapeById(table.name)!.source.frame.top;
      aligned[table.name] = [
        ..._tablePorts(table.name),
        for (var i = 0; i < table.columns.length; i++)
          for (final side in const [PortSide.left, PortSide.right])
            if (connectedPorts.contains(
              _portId(
                table.name,
                table.columns[i].name,
                side == PortSide.left ? 'l' : 'r',
              ),
            ))
              Port(
                id: _portId(
                  table.name,
                  table.columns[i].name,
                  side == PortSide.left ? 'l' : 'r',
                ),
                side: side,
                offsetKind: PortOffsetMode.distanceFromStart,
                offset:
                    layout.cells
                        .firstWhere((cell) => cell.row == i)
                        .bounds
                        .center
                        .y -
                    top,
                width: 4,
                height: 4,
                stroke: const DiagramColor(0xff737373),
                strokeWidth: 1,
              ),
      ];
    }
    final portSteps = <ReplaceElementStep>[
      for (final entry in aligned.entries)
        ReplaceElementStep(
          before: target.document.elementById(entry.key)!,
          after: (target.document.elementById(entry.key)! as ShapeElement)
              .copyWith(ports: entry.value),
        ),
    ];
    if (portSteps.isNotEmpty) {
      target.edits
          .dispatch(
            DiagramTransaction(label: 'Align column ports', steps: portSteps),
            expectedRevision: target.document.revision,
          )
          .requireAllowed();
    }
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

  static List<SchemaColumn> _previewColumns(SchemaTable table, int limit) {
    final keys = {for (final fk in table.foreignKeys) ...fk.columns};
    final ordered = [
      ...table.columns.where((c) => c.isPrimaryKey),
      ...table.columns.where((c) => !c.isPrimaryKey && keys.contains(c.name)),
      ...table.columns.where((c) => !c.isPrimaryKey && !keys.contains(c.name)),
    ];
    return ordered.take(limit).toList();
  }

  static double heightOf(SchemaTable table) =>
      headerHeight +
      (table.columns.isEmpty ? 1 : table.columns.length) * rowHeight;

  static TextStory _story(
    SchemaTable table, {
    required int totalColumns,
    bool headerOnly = false,
  }) {
    final foreignKeys = {for (final fk in table.foreignKeys) ...fk.columns};
    DiagramTableCell cell(String row, String column, String text) {
      final id = '${table.name}::$row::$column';
      return DiagramTableCell(
        id: id,
        blocks: [
          TextParagraph(
            id: '$id-text',
            slotId: id,
            alignment: column == 'type'
                ? ParagraphAlignment.end
                : column == 'key'
                ? ParagraphAlignment.center
                : ParagraphAlignment.start,
            runs: [
              TextRun(
                text,
                fontSize: column == 'name' ? 11 : 10,
                color: column == 'name'
                    ? const DiagramColor(0xff262626)
                    : const DiagramColor(0xff737373),
              ),
            ],
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
              table.name.startsWith('${table.schema}.')
                  ? table.name.substring(table.schema.length + 1)
                  : table.name,
              fontSize: 13,
              color: const DiagramColor(0xff262626),
            ),
            if (totalColumns > table.columns.length)
              TextRun(
                '  (${table.columns.length}/$totalColumns)',
                fontSize: 10,
                color: const DiagramColor(0xff737373),
              ),
          ],
        ),
      ],
      contents: [
        if (!headerOnly)
          TextTable(
            id: '${table.name}-columns',
            slotId: 'columns',
            cellPadding: 6,
            outerBorder: const DiagramBorder(width: 0),
            rowBorder: const DiagramBorder(
              color: DiagramColor(0xffe5e5e5),
              width: .6,
            ),
            columnBorder: const DiagramBorder(width: 0),
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

  static String _tablePortId(String table, String side) =>
      '$table::table-edge/$side';

  static List<Port> _tablePorts(String table) => [
    for (final side in const [PortSide.left, PortSide.right])
      Port(
        id: _tablePortId(table, side == PortSide.left ? 'l' : 'r'),
        side: side,
        offset: .5,
        width: 4,
        height: 4,
        fill: const DiagramColor(0x00000000),
        stroke: const DiagramColor(0x00000000),
        strokeWidth: 0,
      ),
  ];

  static List<Port> portsFor(SchemaTable table) => [
    ..._tablePorts(table.name),
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
}

/// A schema-specific composition of native title and table parts.
/// All cell rendering, geometry, selection and persistence use Vyuh's table.
final class SchemaTableExtension extends DiagramExtension {
  SchemaTableExtension({
    SchemaDetailLevel detailLevel = SchemaDetailLevel.allFields,
  }) : super(
         id: 'podlens.tables',
         dependencies: [TableExtension(tool: false)],
         shapes: [
           ShapeDefinition(
             type: SchemaDiagram.tableShapeType,
             name: 'Schema table',
             values: {'schema': ObjectValueField(defaultValue: {})},
             // Vyuh requires fallback ports; make those markers transparent.
             // Explicit relationship ports retain their own native styling.
             connection: ShapeConnectionDefinition.instancePorts(
               portStyle: const PortStyle(
                 fill: DiagramColor(0x00000000),
                 stroke: DiagramColor(0x00000000),
                 strokeWidth: 0,
                 connectedFill: DiagramColor(0x00000000),
               ),
             ),
             behavior: const ShapeBehavior(resizable: false, rotatable: false),
             body: ShapeColumn([
               ShapeSized(
                 extent: SchemaDiagram.headerHeight,
                 child: const ShapeSurface(
                   outline: ShapeOutline.rect(cornerRadius: false),
                   style: ShapeStyle(
                     fill: DiagramColor(0xfff2f2f2),
                     strokeWidth: 0,
                     cornerRadius: 0,
                   ),
                   child: ShapeText(
                     'title',
                     role: TextRole.title,
                     editable: false,
                   ),
                 ),
               ),
               if (detailLevel != SchemaDetailLevel.names)
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
