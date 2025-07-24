# Documentation Structure

This directory contains the unified documentation for the RDF Vocabularies multi-package project.

## Structure

```
doc/
├── index.html              # Landing page (GitHub Pages home)
└── api/                    # API Documentation
    ├── index.html          # API overview page
    ├── rdf_vocabularies/   # Meta-package API docs
    ├── rdf_vocabularies_core/   # Core package API docs
    ├── rdf_vocabularies_schema/ # Schema.org HTTPS API docs
    └── rdf_vocabularies_schema_http/ # Schema.org HTTP API docs
```

## Generation

Documentation is automatically generated and aggregated by:

```bash
# Generate all package docs and aggregate them
dart run tool/all.dart doc
```

This command:
1. Generates `dart doc` for each package in `packages/*/doc/api/`
2. Runs `tool/aggregate_docs.dart` to copy all docs to `doc/api/`
3. Creates navigation files for unified browsing

## GitHub Pages

The documentation is automatically deployed to GitHub Pages:
- **URL**: https://kkalass.github.io/rdf_vocabularies/
- **Workflow**: `.github/workflows/pages.yml`
- **Trigger**: Push to main branch with changes to package code or documentation

## Local Development

To preview documentation locally:

```bash
# Generate documentation
dart run tool/all.dart doc

# Serve locally (requires Python)
cd doc && python3 -m http.server 8000

# Or use any static file server
```

Then visit: http://localhost:8000

## Package-Specific Documentation

Each package also maintains its own documentation:
- `packages/rdf_vocabularies_core/doc/api/`
- `packages/rdf_vocabularies_schema/doc/api/`
- etc.

These are aggregated into the unified structure but remain available for package-specific browsing.
