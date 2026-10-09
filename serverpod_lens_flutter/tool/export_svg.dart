import 'dart:io';

import 'package:serverpod_lens_flutter/schema/schema_diagram.dart';
import 'package:vyuh_diagram_codec_svg/vyuh_diagram_codec_svg.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_pango.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';

/// Headlessly renders the serverpod_lens schema map to an SVG file.
///
/// Run from the `serverpod_lens_flutter` directory:
///   dart run tool/export_svg.dart
Future<void> main(List<String> args) async {
  final json = File('assets/schema_graph.json').readAsStringSync();
  final graph = SchemaDiagram.graphFromJson(json);

  final controller = DiagramController(
    configuration: DiagramConfiguration(
      extensions: [
        SchemaTableExtension(),
        const LayoutExtension(),
        PangoTextLayoutExtension(
          fontFiles: const [
            '/usr/share/fonts/liberation/LiberationSans-Regular.ttf',
          ],
          defaultFontFamily: 'Liberation Sans',
        ),
        SvgExtension(),
      ],
    ),
  );

  try {
    await SchemaDiagram.build(graph, controller: controller);
    final svg = await controller.exportSvg(
      SvgOptions(bounds: controller.scene.bounds),
    );
    final out = File(args.isNotEmpty ? args.first : '../docs/schema_map.svg');
    out.writeAsStringSync(svg.svg);
    stdout.writeln('Wrote ${svg.svg.length} bytes to ${out.path}');
  } finally {
    controller.dispose();
  }
}
