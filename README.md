# RDF Vocabularies for Dart - Type-safe RDF Constants

[![pub package](https://img.shields.io/pub/v/rdf_vocabularies.svg)](https://pub.dev/packages/rdf_vocabularies)
[![build](https://github.com/kkalass/rdf_vocabularies/actions/workflows/ci.yml/badge.svg)](https://github.com/kkalass/rdf_vocabularies/actions)
[![codecov](https://codecov.io/gh/kkalass/rdf_vocabularies/branch/main/graph/badge.svg)](https://codecov.io/gh/kkalass/rdf_vocabularies)
[![license](https://img.shields.io/github/license/kkalass/rdf_vocabularies.svg)](https://github.com/kkalass/rdf_vocabularies/blob/main/LICENSE)

## Overview

[🌐 **Official Homepage**](https://kkalass.github.io/rdf_vocabularies/)

`rdf_vocabularies` provides type-safe access to standard RDF vocabulary terms as Dart constants for use with [`rdf_core`](https://pub.dev/packages/rdf_core). 

The library is designed for both RDF newcomers and experts, offering structured ways to work with semantic data while maintaining compilation-time safety.

---

## Part of a whole family of projects

If you are looking for more rdf-related functionality, have a look at our companion projects:

* basic graph classes as well as turtle/jsonld/n-triple serialization and parsing: [rdf_core](https://github.com/kkalass/rdf_core) 
* parse and serialize rdf/xml format: [rdf_xml](https://github.com/kkalass/rdf_xml) 
* generate your own easy-to-use constants for other vocabularies with a build_runner: [rdf_vocabulary_to_dart](https://github.com/kkalass/rdf_vocabulary_to_dart)
* map Dart Objects ↔️ RDF: [rdf_mapper](https://github.com/kkalass/rdf_mapper)

---

## Package Characteristics

- **Zero Runtime Overhead**: Nearly all content is composed of compile-time constants
- **Small Binary Size**: Minimal impact on your application's size
- **Type Safety**: Catch vocabulary usage errors at compile time
- **IDE Assistance**: Get autocompletion and documentation directly in your editor

## Features

- **Dual Interface**: Choose between class-specific access for beginners or full vocabulary access for experts
- **Comprehensive Coverage**: Access terms from popular RDF vocabularies (Schema.org, FOAF, Dublin Core, etc.)
- **Rich Documentation**: Each term includes its original description from the vocabulary
- **Seamless Integration**: Works perfectly with the `rdf_core` library

## Getting Started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  rdf_vocabularies: ^0.1.0-dev
  rdf_core: ^0.7.6  # Required for RDF data structures
```

## Usage

### For RDF Newcomers: Class-Specific Approach

If you're new to RDF, the class-specific approach guides you to use the correct properties for each type of resource:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/schema.dart';
import 'package:rdf_vocabularies/xsd.dart';

void main() {
  final personIri = IriTerm('http://example.org/person/jane_doe');
  final addressNode = BlankNodeTerm();
  
  // Create a graph with triples using class-specific constants
  final graph = RdfGraph.fromTriples([
    // Declare the resource type using SchemaPerson constants
    Triple(personIri, SchemaPerson.rdfType, SchemaPerson.classIri),
    
    // Use properties specific to Person - your IDE will help you discover valid properties
    Triple(personIri, SchemaPerson.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, SchemaPerson.email, LiteralTerm.string('jane.doe@example.com')),
    Triple(personIri, SchemaPerson.birthDate, LiteralTerm('1990-01-01', datatype: Xsd.date)),

    // Even those defined in other vocabularies, if their relationship is known to the library
    Triple(personIri, SchemaPerson.foafAge, LiteralTerm.integer(42)),

    // For properties from foreign vocabularies that are not restricted to a specific class, 
    // but are designed to be used universally, you can use the generated UniversalProperties
    // classes. 
    Triple(personIri, DcUniversalProperties.creator, LiteralTerm.string('System')),

    // Create a complex structure with an address
    Triple(personIri, SchemaPerson.address, addressNode),
    Triple(addressNode, SchemaPostalAddress.rdfType, SchemaPostalAddress.classIri),
    Triple(addressNode, SchemaPostalAddress.streetAddress, LiteralTerm.string('123 Main St')),
    Triple(addressNode, SchemaPostalAddress.addressLocality, LiteralTerm.string('Anytown')),
  ]);
}
```

**Benefits of this approach:**
- Your IDE shows only relevant properties for each class
- Compile-time type safety prevents mixing incompatible vocabulary terms
- Discoverability through autocomplete helps you learn the vocabulary structure

### For RDF Experts: Full Vocabulary Approach

Experienced RDF developers who know exactly which vocabulary terms they need can use the more direct full vocabulary classes:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/schema.dart';
import 'package:rdf_vocabularies/rdf.dart';
import 'package:rdf_vocabularies/foaf.dart';
import 'package:rdf_vocabularies/xsd.dart';

void main() {
  final personIri = IriTerm('http://example.org/person/jane_doe');
  final addressNode = BlankNodeTerm();
  
  // Create a graph with direct vocabulary access
  final graph = RdfGraph.fromTriples([
    Triple(personIri, Rdf.type, Schema.Person),
    
    // Mix properties from different vocabularies freely
    Triple(personIri, Schema.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, Foaf.age, LiteralTerm.integer(42)),
    Triple(personIri, Schema.email, LiteralTerm.string('jane.doe@example.com')),
    
    // Create a complex structure with an address
    Triple(personIri, Schema.address, addressNode),
    Triple(addressNode, Rdf.type, Schema.PostalAddress),
    Triple(addressNode, Schema.streetAddress, LiteralTerm.string('123 Main St')),
  ]);
}
```

**Benefits of this approach:**
- Maximally flexible - combine terms from any vocabulary
- More concise syntax for those who know exactly what they need
- Natural for developers coming from other RDF environments

## Supported Vocabularies

This package includes constants for these vocabularies:

- **ACL**: Web Access Control vocabulary
- **Contact**: Contact information vocabulary
- **DC**: Dublin Core basic elements
- **DCMIType**: Dublin Core type vocabulary
- **DCTerms**: Dublin Core terms
- **EventOwl**: Event vocabulary
- **FOAF**: Friend of a Friend vocabulary
- **GEO**: Geospatial vocabulary
- **LDP**: Linked Data Platform vocabulary
- **OWL**: Web Ontology Language
- **RDF**: Resource Description Framework base vocabulary
- **RDFS**: RDF Schema vocabulary
- **Schema**: Schema.org vocabulary
- **SKOS**: Simple Knowledge Organization System
- **Solid**: Solid platform vocabulary
- **VCard**: vCard ontology for contacts
- **VS**: Vocabulary Status ontology
- **XSD**: XML Schema Datatypes

## Performance Impact

Including `rdf_vocabularies` in your project:
- **Package Size**: Minimal impact on package size as it consists primarily of constants
- **Runtime Performance**: Zero runtime overhead since values are compile-time constants
- **Memory Usage**: Negligible increase in memory usage
- **Build Time**: May slightly increase initial build time, but no impact on runtime performance

## 🤝 Contributing

Contributions, bug reports, and feature requests are welcome!

- Fork the repo and submit a PR
- See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines
- Join the discussion in [GitHub Issues](https://github.com/kkalass/rdf_vocabularies/issues)

## 🤖 AI Policy

This project is proudly human-led and human-controlled, with all key decisions, design, and code reviews made by people. At the same time, it stands on the shoulders of LLM giants: generative AI tools are used throughout the development process to accelerate iteration, inspire new ideas, and improve documentation quality. We believe that combining human expertise with the best of AI leads to higher-quality, more innovative open source software.

---

© 2025 Klas Kalaß. Licensed under the MIT License.
