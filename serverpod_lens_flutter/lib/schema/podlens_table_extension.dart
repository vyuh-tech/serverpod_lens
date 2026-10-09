import 'package:flutter/material.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaColumn, SchemaTable;
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart'
    show DiagramColor, DiagramNoFill, DiagramSize, ShapeStyle;
import 'package:vyuh_diagram_flutter/extension_api.dart';

import 'lens_state.dart';
import 'schema_diagram.dart';

/// Installs the `podlens.table` shape and the Flutter widget that renders a
/// schema table as a dbdiagram.io-style card (colored header + column rows).
///
/// The widget reads its table from a map captured at construction, keyed by the
/// shape id (the table name). Row metrics match [SchemaDiagram.rowHeight] /
/// [SchemaDiagram.headerHeight] so foreign-key ports line up with the rows.
///
/// View settings come from [lens] so toggling them updates the cards in place,
/// without rebuilding the diagram.
final class PodLensTableExtension extends DiagramFlutterExtension {
  factory PodLensTableExtension(
    List<SchemaTable> tables, {
    required LensState lens,
  }) {
    return PodLensTableExtension._({
      for (final table in tables) table.name: table,
    }, lens);
  }

  PodLensTableExtension._(
    Map<String, SchemaTable> tables,
    LensState lens,
  ) : super(
        id: 'podlens.tables',
        editable: true,
        shapes: [_tableShapeDefinition()],
        widgets: {
          SchemaDiagram.tableWidgetKey: (context, shape) =>
              TableCard(table: tables[shape.owner.id], lens: lens),
        },
      );
}

ShapeDefinition _tableShapeDefinition() => ShapeDefinition(
  type: SchemaDiagram.tableShapeType,
  name: 'Table',
  minimumSize: const DiagramSize(140, 40),
  connection: ShapeConnectionDefinition.instancePorts(),
  style: const ShapeStyle(
    fill: DiagramNoFill(),
    stroke: DiagramColor(0x00000000),
    strokeWidth: 0,
  ),
  body: ShapeColumn([
    ShapeWidget(
      SchemaDiagram.tableWidgetKey,
      fallback: const ShapeText('body'),
    ),
  ]),
);

/// A table rendered as a header bar plus one row per column. Kept deliberately
/// cheap: a `DecoratedBox` (no clip/`saveLayer`) and flat rows, since hundreds
/// of these are on screen at once.
class TableCard extends StatelessWidget {
  const TableCard({super.key, required this.table, required this.lens});

  final SchemaTable? table;
  final LensState lens;

  @override
  Widget build(BuildContext context) {
    final t = table;
    if (t == null) return const SizedBox.shrink();
    return ListenableBuilder(
      listenable: lens,
      builder: (context, _) => _card(context, lens.value.showColumnTypes),
    );
  }

  Widget _card(BuildContext context, bool showTypes) {
    final t = table!;

    final dark = Theme.of(context).brightness == Brightness.dark;
    final background = dark ? const Color(0xFF0B1220) : Colors.white;
    final nameColor = dark ? const Color(0xFFE2E8F0) : const Color(0xFF0F172A);
    final typeColor = dark ? const Color(0xFF94A3B8) : const Color(0xFF64748B);
    final borderColor = dark ? const Color(0xFF243244) : const Color(0xFFD7DEE8);
    final rowBorder = dark ? const Color(0xFF16202F) : const Color(0xFFEDF1F6);
    final fkColumns = {
      for (final fk in t.foreignKeys)
        for (final column in fk.columns) column,
    };

    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: SchemaDiagram.headerHeight,
            decoration: BoxDecoration(
              color: _moduleColor(t.module),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(9),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 14),
            alignment: Alignment.centerLeft,
            child: Text(
              t.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
            ),
          ),
          for (var i = 0; i < t.columns.length; i++)
            _row(
              column: t.columns[i],
              isForeignKey: fkColumns.contains(t.columns[i].name),
              isLast: i == t.columns.length - 1,
              showType: showTypes,
              nameColor: nameColor,
              typeColor: typeColor,
              borderColor: rowBorder,
            ),
        ],
      ),
    );
  }

  Widget _row({
    required SchemaColumn column,
    required bool isForeignKey,
    required bool isLast,
    required bool showType,
    required Color nameColor,
    required Color typeColor,
    required Color borderColor,
  }) {
    return Container(
      height: SchemaDiagram.rowHeight,
      padding: const EdgeInsets.only(left: 12, right: 14),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : Border(bottom: BorderSide(color: borderColor, width: 1)),
      ),
      child: Row(
        children: [
          _badge(column.isPrimaryKey, isForeignKey),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              column.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11.5,
                color: nameColor,
                fontWeight: column.isPrimaryKey ? FontWeight.w600 : null,
              ),
            ),
          ),
          if (showType) ...[
            const SizedBox(width: 10),
            Text(
              '${column.dbType}${column.isNullable ? '?' : ''}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10.5, color: typeColor),
            ),
          ],
        ],
      ),
    );
  }

  Widget _badge(bool isPrimaryKey, bool isForeignKey) {
    if (isPrimaryKey) {
      return const Icon(Icons.vpn_key, size: 12, color: Color(0xFFF59E0B));
    }
    if (isForeignKey) {
      return const Icon(Icons.link, size: 13, color: Color(0xFF3B82F6));
    }
    return const SizedBox(width: 13);
  }

  static Color _moduleColor(String module) => moduleColor(module);
}

/// Accent color for a schema module, shared by cards and the minimap.
Color moduleColor(String module) => switch (module) {
  'public' => const Color(0xFF64748B),
  'sso' => const Color(0xFF2563EB),
  'elog' => const Color(0xFF059669),
  _ => const Color(0xFF7C3AED),
};
