import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:test/test.dart';

LensSchemaSnapshot snapshot(
  String revision, {
  bool unchanged = false,
  String project = 'shop',
}) => LensSchemaSnapshot(
  projectId: project,
  sourceKind: 'currentTarget',
  revision: revision,
  checkedAt: DateTime.utc(2026),
  graph: unchanged
      ? null
      : SchemaGraph(
          source: 'Shop',
          generatedAt: DateTime.utc(2026),
          tables: [],
          modules: [],
          enums: [],
        ),
  sourcePaths: unchanged ? null : {'public.orders': 'lib/order.spy.yaml'},
  modelSources: unchanged ? null : {'public.orders': 'class: Order'},
);
void main() {
  test('unchanged snapshots retain graph identity and source maps', () {
    final state = LensSnapshotState(expectedProjectId: 'shop');
    state.accept(snapshot('first'));
    final graph = state.graph;
    state.accept(snapshot('first', unchanged: true));
    expect(identical(state.graph, graph), isTrue);
    expect(state.modelSources['public.orders'], 'class: Order');
  });
  test('invalid project or missing changed graph leaves state intact', () {
    final state = LensSnapshotState(expectedProjectId: 'shop');
    state.accept(snapshot('first'));
    expect(
      () => state.accept(snapshot('second', project: 'other')),
      throwsFormatException,
    );
    expect(
      () => state.accept(snapshot('second', unchanged: true)),
      throwsFormatException,
    );
    expect(state.revision, 'first');
  });
  test('initial omission is rejected and clear removes protected sources', () {
    final state = LensSnapshotState();
    expect(
      () => state.accept(snapshot('first', unchanged: true)),
      throwsFormatException,
    );
    state.accept(snapshot('first'));
    state.clear();
    expect(state.graph, isNull);
    expect(state.modelSources, isEmpty);
    expect(state.projectId, isNull);
  });
  test('snapshot wire roundtrip is shared and rejects malformed metadata', () {
    final decoded = LensSchemaSnapshot.fromJson(snapshot('first').toJson());
    expect(decoded.projectId, 'shop');
    expect(decoded.graph!.source, 'Shop');
    expect(
      () => LensSchemaSnapshot.fromJson({'projectId': 'shop'}),
      throwsFormatException,
    );
  });
}
