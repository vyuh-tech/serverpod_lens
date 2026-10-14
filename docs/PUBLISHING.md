# Internal package publishing

Only `serverpod_lens_schema` and `serverpod_lens` are released. Both target
`https://pub.vyuh.tech` with `publish_to_tier: internal`, following CDX's registry
and token setup. Examples, generated clients and local tools stay unpublished.

## Manual workflow

1. Open GitHub Actions → **Publish internal Lens packages** → **Run workflow**.
2. Select `main` and leave **dry_run** checked to validate the release.
3. Review the successful validation. Run again on `main` with **dry_run** unchecked
   when ready to publish the versions recorded in the package manifests.

There are no push or tag triggers, automatic releases, Git tags or Cloud deployment
steps. The workflow does not bump versions. Later releases need updated package
versions, changelogs and the viewer's schema dependency before validation.

The existing organization secret `PUB_VYUH_TOKEN` must be available to the repo
with registry access for licensed dependencies and publishing. Its value is never
printed; Dart uses `--env-var` authentication. GitHub repository access is read only.

## Checks and release order

The workflow resolves the locked workspace with Flutter 3.47.5 and Melos 8.7.0,
runs analysis, formatting, policy tests and both package suites, then validates
clean publication archives outside the workspace. Only Dart's exact warning for
the custom `publish_to_tier` field is accepted; extra warnings and errors fail.

Actual publication runs schema first, then viewer, with explicit package scopes
and `--no-git-tag-version`. The final check reads the registry and verifies both
expected versions and their recorded internal tier. Publication is not atomic:
if the viewer fails after the schema succeeds, inspect the failure and rerun;
Melos skips package versions already present in the registry.

## Install after publication

Configure access to Vyuh's registry, then add the hosted dependency:

```yaml
dependencies:
  serverpod_lens:
    hosted: https://pub.vyuh.tech
    version: ^0.1.0
```

For extraction without Flutter, use `serverpod_lens_schema` with the same hosted
URL and version. Until those versions are published, use the Git installation in
the [viewer README](../packages/serverpod_lens/README.md).
