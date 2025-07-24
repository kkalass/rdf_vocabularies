# RDF Vocabularies Workspace

This is the workspace root for the RDF Vocabularies multi-package project.

## Package Structure

```
packages/
├── rdf_vocabularies/              # Meta-package (exports all vocabularies)
├── rdf_vocabularies_core/         # Core RDF vocabularies (~5MB)
├── rdf_vocabularies_schema/       # Schema.org HTTPS (~35MB)
└── rdf_vocabularies_schema_http/  # Schema.org HTTP (~36MB)
```

## Quick Start

```bash
# Test all packages
./test_all.sh

# Work with individual packages
cd packages/rdf_vocabularies_core
dart pub get
dart test
dart run example/main.dart
```

## Package Information

| Package | Purpose | Size | Use Case |
|---------|---------|------|----------|
| `rdf_vocabularies` | Meta-package | ~1MB | Full compatibility |
| `rdf_vocabularies_core` | Core vocabularies | ~5MB | Most applications |
| `rdf_vocabularies_schema` | Schema.org HTTPS | ~35MB | Modern Schema.org |
| `rdf_vocabularies_schema_http` | Schema.org HTTP | ~36MB | Legacy compatibility |

## Development

- Each package has its own `pubspec.yaml`, tests, and examples
- The meta-package (`rdf_vocabularies`) depends on all other packages
- Core package includes: RDF, RDFS, OWL, FOAF, Dublin Core, SKOS, vCard, etc.
- Schema packages contain only Schema.org vocabularies

## Documentation

See the main [README.md](README.md) for user documentation and package selection guidance.
