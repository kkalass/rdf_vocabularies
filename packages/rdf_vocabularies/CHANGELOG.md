# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
