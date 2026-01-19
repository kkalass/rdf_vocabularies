# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.6] - 2026-01-19

### Deprecated

- **This package is deprecated and no longer maintained.**
- All functionality has been moved to [`locorda_rdf_terms`](https://pub.dev/packages/locorda_rdf_terms) as part of the [locorda](https://github.com/locorda) project.
- The repository has moved to [`github.com/locorda/rdf-vocabularies`](https://github.com/locorda/rdf-vocabularies) (note the hyphen).
- Please migrate to the new package by replacing `rdf_vocabularies` with `locorda_rdf_terms` in your `pubspec.yaml` and updating your imports.
- **Important:** All sub-packages (rdf_vocabularies_*) have also been renamed to locorda_rdf_terms_*.
- This repository will be archived.

## [0.4.5] - 2025-09-23

### Changed
- **Dependency updates**: Updated all underlying packages with rdf_core ^0.9.15 and rdf_vocabulary_to_dart ^0.9.2
- **Vocabulary regeneration**: All vocabulary files regenerated with latest code generation improvements
  - Enhanced code generation with improved type safety and documentation
  - Updated all core and Schema.org vocabulary class definitions
  - Refreshed vocabulary structure across all packages for better performance
- **Package dependencies**: Updated to rdf_vocabularies_core 0.4.5, rdf_vocabularies_schema 0.4.5, and rdf_vocabularies_schema_http 0.4.5
- **Code quality improvements**: Applied latest linting rules and formatting standards across all packages

## [0.4.4] - 2025-08-11

### Fixed
- **PIM vocabulary export**: Added missing PIM (Personal Information Management) vocabulary export to public API
  - PIM vocabulary is now accessible via `import 'package:rdf_vocabularies/pim.dart'`
  - Includes all PIM workspace and storage management classes

### Changed
- Updated dependencies to rdf_vocabularies_core 0.4.4 with fixed PIM exports

## [0.4.3] - 2025-07-30

### Added
- **PIM vocabulary support**: Added complete W3C Personal Information Management (PIM) vocabulary integration through updated dependencies
- Enhanced agent classes across all vocabularies with PIM properties (masterWorkspace, preferencesFile)

### Changed
- Updated dependencies to rdf_vocabularies_core 0.4.3 with PIM vocabulary support
- Updated dependencies to rdf_vocabularies_schema 0.4.3 with enhanced agent classes
- Updated dependencies to rdf_vocabularies_schema_http 0.4.3 with enhanced agent classes

## [0.4.2] - 2025-07-24

### Changed
- Updated README documentation with improved formatting and clarity
- Removed codecov reporting from CI pipeline (not applicable for vocabulary constants)

### Fixed
- Corrected documentation formatting errors and inconsistencies

## [0.4.1] - 2025-07-24

### Added
- Release automation and improved publishing workflow
- Enhanced CI/CD integration with comprehensive testing
- Streamlined dependency management for multi-package releases

### Fixed
- Meta-package dependency synchronization
- Publishing order to ensure core packages are available before meta-package updates

## [0.4.0] - 2025-07-24

### Added
- **Multi-package architecture** support as meta-package
- Re-exports all vocabularies from specialized packages:
  - `rdf_vocabularies_core` - Core RDF vocabularies (~5MB)
  - `rdf_vocabularies_schema` - Schema.org HTTPS vocabularies (~35MB)
  - `rdf_vocabularies_schema_http` - Schema.org HTTP vocabularies (~36MB)
- Comprehensive test suites across all packages
- Class-specific examples and documentation

### Changed
- **Package structure**: Now acts as meta-package that re-exports all vocabularies
- **Dependencies**: Uses path dependencies to specialized packages
- **Size optimization**: Users can choose individual packages for smaller footprint

### Migration
- **100% API compatibility maintained** - no code changes required for existing users
- All import statements remain unchanged
- Users can optionally switch to individual packages (`rdf_vocabularies_core`, etc.) for size optimization

## [0.3.1] - 2025-07-24

### Changed
- Updated `rdf_core` dependency to ^0.9.11
- Ran `dart pub upgrade`

## [0.3.0] - 2025-05-14

### Changed
- Updated `rdf_core` dependency to ^0.9.0

## [0.2.0] - 2025-05-13

### Changed
- Updated `rdf_core` dependency from ^0.7.6 to ^0.8.1
- Updated `rdf_vocabulary_to_dart` dependency from ^0.7.2 to ^0.8.0
- Improved documentation and examples

### Compatible
- Maintains compatibility with the latest version of `rdf_core`

## [0.1.0] - 2025-05-09

### Added
- Initial generation of 19 well-known vocabularies
