# RDF Vocabularies Tooling Ecosystem

This directory contains the comprehensive tooling infrastructure for managing the RDF Vocabularies multi-package workspace.

## 🎯 Main Tools

### `tool/all.dart` - Unified Package Manager
The central tool for managing all packages in the workspace. Handles setup, testing, building, documentation, cleaning, and **coordinated releasing**.

```bash
dart run tool/all.dart <command>
```

**Commands:**
- `setup` - Get dependencies for all packages
- `test` - Run tests for all packages (with coverage if tools available)
- `build` - Build packages with build_runner
- `doc` - Generate API documentation (with version sync if tools available)
- `clean-build` - Clean only build artifacts (build_runner cache and build/ directory)
- `clean-all` - Clean everything (dependencies, docs, coverage, build artifacts)
- `release` - **Coordinated release for all packages (synchronized versions)**

### `tool/workspace_release.dart` - Multipackage Release Manager
Coordinates releases across all packages with synchronized versions and single git tags.

```bash
dart run tool/workspace_release.dart [options]
```

**Options:**
- `--dry-run` - Simulate the release process without making changes
- `--no-publish` - Skip triggering the publishing workflow
- `--non-interactive` - Skip interactive prompts (requires clean working directory)
- `--help` - Show help message

**Features:**
- Single git tag for all packages  
- Synchronized versions across packages
- Comprehensive validation before release
- GitHub Actions integration for publishing

## 🎯 Other Tools

### `tool/copy_tools.dart` - Tool Distribution
Copies and customizes shared tool infrastructure from rdf_core to individual packages, ensuring consistency across the workspace.

```bash
dart run tool/copy_tools.dart <target_dir> <package_name> [--dry-run]
```

**Features:**
- Sources tools from `../rdf_core/tool/` as canonical source
- Automatically customizes package names in copied tools
- Ensures all packages have the same quality tooling available
- Typically called by `all.dart` for coordinated operations

### Individual Package Tools
Each package has its own tool directory for package-specific operations:

- `tool/run_tests.dart` - Test execution with coverage reporting
- `tool/update_version.dart` - Version and documentation management

**Note:** Individual package `release.dart` scripts should not be used in multipackage environments.

##  Quick Start

1. **Initial Setup:**
   ```bash
   dart run tool/all.dart setup
   ```

2. **Run Tests:**
   ```bash
   dart run tool/all.dart test
   ```

3. **Build Generated Code:**
   ```bash
   dart run tool/all.dart build
   ```

4. **Release All Packages (Coordinated):**
   ```bash
   dart run tool/workspace_release.dart --dry-run  # Test first
   dart run tool/workspace_release.dart            # Actual release
   ```

## 📦 Package-Specific Operations (Safe Tools Only)

Each package has its own tool directory for **non-release** operations:

```bash
cd packages/rdf_vocabularies_core
dart run tool/run_tests.dart          # Tests with coverage
dart run tool/update_version.dart     # Version management
```

## 🏗️ Architecture

### Centralized Management
- Single source of truth for package operations
- Consistent tooling across all packages
- Simplified maintenance and updates

### Package Autonomy
- Each package can run tools independently
- Tools are customized for specific package names
- Individual operations when needed

## 🔧 Tool Management

The `copy_tools.dart` script distributes tools to individual packages with the following transformations:

1. **Package Name Replacement:** All occurrences of `rdf_core` are replaced with the target package name
2. **Executable Permissions:** Tools are automatically made executable on Unix systems
3. **Source Synchronization:** Tools are sourced from `../rdf_core/tool/` as the canonical location
