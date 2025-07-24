# Publishing Guide

This document describes the automated publishing process for the multi-package RDF vocabularies project.

## 🚀 Quick Start - Automated Release

The entire release process is automated. Simply run:

```bash
# Full automated release
dart run tool/release.dart

# Or test the process without making changes
dart run tool/release.dart --dry-run
```

That's it! The tool handles everything automatically:
- ✅ Validates all packages have the same version
- ✅ Normalizes dev versions (e.g., `0.4.0-dev` → `0.4.0`) for release
- ✅ Runs tests for all packages
- ✅ Updates dependencies in meta-package for publishing
- ✅ Validates CHANGELOGs are updated
- ✅ Creates git tag and pushes to remote
- ✅ Triggers GitHub Actions for publishing in correct order
- ✅ Restores path dependencies for development
- ✅ Increments to next development version (e.g., `0.4.0` → `0.4.1-dev`)

## 📦 Package Architecture & Dependencies

The project uses a multi-package architecture with automatic dependency management:

```
rdf_vocabularies_core ─┐
rdf_vocabularies_schema ─┼─→ rdf_vocabularies (meta-package)
rdf_vocabularies_schema_http ─┘
```

**Publishing Order** (handled automatically):
1. Core packages are published first (parallel)
2. Meta-package is published after core packages are available

## 🔧 Version Management

The project uses semantic versioning with development suffixes:

```bash
# Set development version (daily work)
dart run tool/set_version.dart 0.4.1-dev

# The release tool automatically:
# 1. Normalizes: 0.4.1-dev → 0.4.1 (for release)
# 2. After release: 0.4.1 → 0.4.2-dev (next development)
```

Manual version updates (if needed):
```bash
# Update all packages to specific version
dart run tool/set_version.dart 0.5.0-dev
```

## 📋 Release Checklist

Before running `dart run tool/release.dart`, ensure:

1. **Development version set**: Should end with `-dev` (e.g., `0.4.1-dev`)
2. **CHANGELOGs updated**: Add entries for the release version (without `-dev`) in all package CHANGELOG.md files
3. **Tests passing**: Run `dart run tool/all.dart test` to verify
4. **Clean working directory**: Commit any outstanding changes

The release tool will automatically:
- Strip `-dev` suffix for release (e.g., `0.4.1-dev` → `0.4.1`)  
- Create release commits and tags
- Publish packages
- Set next dev version (e.g., `0.4.1` → `0.4.2-dev`)

## 🤖 GitHub Actions Automation

### Current Setup (Manual Publishing)
- Workflow runs dry-run validation automatically
- Manual publishing step requires running `dart pub publish` in each package directory
- This is safe and allows review before actual publishing

### Enable Fully Automated Publishing (Optional)
To enable fully automated publishing:

1. **Add pub.dev credentials** to GitHub repository secrets:
   ```bash
   # Get your pub.dev credentials
   cat ~/.pub-cache/credentials.json
   # Add this as PUB_CREDENTIALS secret in GitHub repo settings
   ```

2. **Uncomment auto-publish sections** in `.github/workflows/publish.yml`:
   ```yaml
   # Remove the # comments from these sections:
   # - name: Publish ${{ matrix.package.name }}
   #   if: steps.should_publish.outputs.publish == 'true' && github.event_name == 'release'
   #   working-directory: ${{ matrix.package.path }}
   #   env:
   #     PUB_CREDENTIALS: ${{ secrets.PUB_CREDENTIALS }}
   #   run: echo "$PUB_CREDENTIALS" > ~/.pub-cache/credentials.json && dart pub publish -f
   ```

## 🛠️ Advanced Usage

### Test Release Process
```bash
# Simulate entire release without making changes
dart run tool/release.dart --dry-run
```

### Manual Publishing (Not Recommended)
If you need to publish manually for any reason:

```bash
# Publish core packages first
cd packages/rdf_vocabularies_core && dart pub publish
cd ../rdf_vocabularies_schema && dart pub publish  
cd ../rdf_vocabularies_schema_http && dart pub publish

# Wait 1-2 minutes for pub.dev to index packages

# Update meta-package dependencies
cd ../.. && dart run tool/update_dependencies.dart

# Publish meta-package
cd packages/rdf_vocabularies && dart pub publish
```

## 🚨 Troubleshooting

### "Version mismatch" error
All packages must have the same version. Run:
```bash
dart run tool/update_version.dart 0.4.1  # Use desired version
```

### "Working directory not clean" error
Commit your changes first:
```bash
git add .
git commit -m "Prepare for release"
```

### "CHANGELOG.md does not contain entry" error
Add a section for your version in each package's CHANGELOG.md:
```markdown
## [0.4.1] - 2025-07-24
- Your changes here
```
