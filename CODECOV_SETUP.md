# Codecov Setup Instructions

This document explains how to configure Codecov for the RDF Vocabularies monorepo.

## Current Issues

The code coverage is showing as 0% on Codecov, likely due to the following issues:

1. **Missing Codecov Token**: GitHub Actions v4 requires a `CODECOV_TOKEN` secret
2. **Monorepo Configuration**: Need proper configuration for multi-package coverage

## Setup Steps

### 1. Get Codecov Token

1. Go to [https://app.codecov.io/gh/kkalass/rdf_vocabularies](https://app.codecov.io/gh/kkalass/rdf_vocabularies)
2. Navigate to Settings → General
3. Copy the "Repository Upload Token"

### 2. Add GitHub Secret

1. Go to GitHub repository settings: [https://github.com/kkalass/rdf_vocabularies/settings/secrets/actions](https://github.com/kkalass/rdf_vocabularies/settings/secrets/actions)
2. Click "New repository secret"
3. Name: `CODECOV_TOKEN`
4. Value: [paste the token from step 1]
5. Click "Add secret"

### 3. Verify Configuration

After adding the token, the next CI run should properly upload coverage data.

## Configuration Files

- **`.github/workflows/ci.yml`**: Enhanced with proper Codecov uploads for monorepo
- **`codecov.yml`**: Codecov configuration with component definitions for each package

## What Changed

### Enhanced CI Workflow

The CI workflow now includes:

1. **Per-package coverage**: Each package uploads its own coverage with proper flags
2. **Combined coverage job**: Merges all package coverage into a single report
3. **Proper path handling**: Adjusts file paths to be relative to workspace root
4. **Token authentication**: Uses `CODECOV_TOKEN` secret for authentication

### Codecov Configuration

The `codecov.yml` file defines:

- **Component structure**: Separate components for each package
- **Coverage targets**: 70% project, 80% patch coverage
- **Ignore patterns**: Excludes generated files, docs, examples
- **Monorepo support**: Proper flag and path handling

## Expected Results

After configuration:

1. **Individual package coverage**: Each package will show separate coverage metrics
2. **Combined coverage**: Overall repository coverage across all packages
3. **Per-PR coverage**: Coverage changes in pull requests
4. **Component breakdown**: Detailed coverage per package component

## Troubleshooting

If coverage still shows 0%:

1. **Check GitHub Actions logs**: Look for Codecov upload errors
2. **Verify token**: Ensure `CODECOV_TOKEN` is correctly set in GitHub secrets
3. **Check Codecov dashboard**: Look for upload status in Codecov web interface
4. **Test locally**: Run coverage generation locally to verify test coverage

## Local Testing

To test coverage generation locally:

```bash
# Generate coverage for a package
cd packages/rdf_vocabularies_core
dart test --coverage=coverage
dart pub global activate coverage
dart pub global run coverage:format_coverage \
  --lcov --in=coverage --out=coverage/lcov.info --report-on=lib

# View coverage report
cat coverage/lcov.info
```

## Resources

- [Codecov Documentation](https://docs.codecov.com/)
- [Codecov GitHub Action](https://github.com/codecov/codecov-action)
- [Dart Coverage Package](https://pub.dev/packages/coverage)
