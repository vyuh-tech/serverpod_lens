import 'dart:io';

import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import '../publication_policy.dart';

void main() {
  const warning = '''Package validation found the following potential issue:
* "publish_to_tier" is not a key recognized by pub - did you mean "publish_to"?
The server may enforce additional checks.
Package has 1 warning.
''';
  test(
    'validator accepts only success or the precise CDX custom-tier warning',
    () {
      expect(publicationValidationPassed(0, 'Package has 0 warnings.'), isTrue);
      expect(publicationValidationPassed(65, warning), isTrue);
      expect(publicationValidationPassed(1, warning), isFalse);
      expect(
        publicationValidationPassed(
          65,
          warning.replaceAll('1 warning', '2 warnings'),
        ),
        isFalse,
      );
      expect(
        publicationValidationPassed(
          65,
          warning.replaceFirst('The server', '* Another warning\nThe server'),
        ),
        isFalse,
      );
      expect(
        publicationValidationPassed(
          65,
          'Package validation found the following error:\n$warning',
        ),
        isFalse,
      );
    },
  );
  test('registry verification requires the exact package version and internal tier', () {
    const release = PackageRelease(
      'serverpod_lens_schema',
      '0.1.0',
      'packages/serverpod_lens_schema',
    );
    Map<String, dynamic> response(String tier, {String version = '0.1.0'}) => {
      'versions': [
        {
          'version': version,
          'pubspec': {
            'name': release.name,
            'version': version,
            'publish_to_tier': tier,
          },
        },
      ],
    };
    expect(
      registryContainsInternalRelease(response('internal'), release),
      isTrue,
    );
    expect(registryContainsInternalRelease(response('pro'), release), isFalse);
    expect(
      registryContainsInternalRelease(
        response('internal', version: '0.2.0'),
        release,
      ),
      isFalse,
    );
    expect(registryContainsInternalRelease({'versions': []}, release), isFalse);
  });
  test('only the two internal product packages can be released', () {
    final releases = releasePackages(Directory.current);
    expect(releases.map((release) => release.name), publicationPackages);
  });
  test('workflow is manual, defaults to dry run and gates every write', () {
    final workflow = loadYaml(
      File('.github/workflows/publish-packages.yml').readAsStringSync(),
    ) as YamlMap;
    final triggers = workflow['on'] as YamlMap;
    expect(triggers.keys, ['workflow_dispatch']);
    final input = triggers['workflow_dispatch']['inputs']['dry_run'];
    expect(input['type'], 'boolean');
    expect(input['default'], isTrue);
    expect(workflow['permissions']['contents'], 'read');
    expect(workflow['jobs']['publish']['permissions'], isNull);
    final steps = workflow['jobs']['publish']['steps'] as YamlList;
    final writes = steps.where(
      (step) =>
          step['name'] == 'Publish schema first' ||
          step['name'] == 'Publish viewer' ||
          step['name'] == 'Verify released versions and internal tier',
    );
    expect(writes, hasLength(3));
    for (final step in writes) {
      expect(step['if'], contains('!inputs.dry_run'));
      expect(step['if'], contains("github.ref == 'refs/heads/main'"));
      if ((step['name'] as String).startsWith('Publish ')) {
        expect(step['run'], contains('--no-git-tag-version'));
        expect(step['run'], isNot(contains('--skip-validation')));
      }
    }
  });
}
