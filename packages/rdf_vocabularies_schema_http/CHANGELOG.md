# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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

### Fixed
- Dependency management and version synchronization
- Publishing order for multi-package releases

## [0.4.0] - 2025-07-24

### Added
- **Initial release** as separate Schema.org (HTTP) package
- Complete Schema.org vocabulary with HTTP URIs
- Optimized for projects specifically requiring Schema.org vocabularies with HTTP URIs
- Package size ~36MB (Schema.org vocabularies only)
- Comprehensive test suite for Schema.org classes and properties

### Migration
- **New package** - use `dart pub add rdf_vocabularies_schema_http` to install
- Compatible with `rdf_vocabularies_core` for combined usage
- All Schema.org classes and properties available with HTTP URIs

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
