# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.1] - 2025-07-24

### Fixed
- Improved release automation workflow
- Enhanced documentation generation and deployment
- Streamlined publishing process with proper dependency management

## [0.4.0] - 2025-07-24

### Added
- **Initial release** as separate core vocabularies package
- Core RDF vocabularies: RDF, RDFS, OWL, XSD, SKOS, Dublin Core, FOAF, vCard, ACL, LDP, GEO, and more
- Optimized package size (~5MB) for projects not requiring Schema.org vocabularies
- Comprehensive test suite with class-specific access patterns
- Class-specific examples using `FoafPerson`, `VcardAddress`, etc.

### Migration
- **100% API compatibility** with original `rdf_vocabularies` package
- Direct replacement for projects using core vocabularies only
- All import statements remain unchanged when switching from meta-package

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
