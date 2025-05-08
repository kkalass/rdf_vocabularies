# RDF Vocabulary to Dart - Type-safe RDF for Dart

[![pub package](https://img.shields.io/pub/v/rdf_vocabularies.svg)](https://pub.dev/packages/rdf_vocabularies)
[![build](https://github.com/kkalass/rdf_vocabularies/actions/workflows/ci.yml/badge.svg)](https://github.com/kkalass/rdf_vocabularies/actions)
[![codecov](https://codecov.io/gh/kkalass/rdf_vocabularies/branch/main/graph/badge.svg)](https://codecov.io/gh/kkalass/rdf_vocabularies)
[![license](https://img.shields.io/github/license/kkalass/rdf_vocabularies.svg)](https://github.com/kkalass/rdf_vocabularies/blob/main/LICENSE)

## Overview

[🌐 **Official Homepage**](https://kkalass.github.io/rdf_vocabularies/)

`rdf_vocabularies` is a collection of well known RDF vocabularies as Dart constants, grouped in classes. The library provides a type-safe way to work with RDF data in Dart applications, making it easier to build Semantic Web and Linked Data applications.

## Features

- **Type-safe RDF terms**: Access common RDF vocabulary terms as typed Dart constants
- **Comprehensive documentation**: Each term includes its original description from the vocabulary
- **Two usage approaches**:
  - For RDF beginners: Use generated class-specific constants (e.g., `SchemaPerson.name`)
  - For RDF experts: Access the full vocabulary (e.g., `Schema.Person`, `Schema.name`)

## Getting Started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  rdf_vocabularies: ^0.1.0-dev
  rdf_core: ^0.7.6  # Required for RDF data structures
```

Then run:

```bash
dart pub get
```

## Usage

### For Dart Developers New to RDF

If you're new to RDF but want to use RDF data with specific types of resources (like a Person), the library provides convenient class-specific constants:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/schema.dart';
import 'package:rdf_vocabularies/src/generated/schema/classes/person.dart';

void main() {
  // Create a person using blank node and class-specific constants
  final personNode = BlankNode();
  final graph = MemoryGraph();
  
  // Use SchemaPerson.classIri to specify the type
  graph.add(Triple(
    personNode,
    RdfTerms.type,  // rdf:type from rdf_core
    SchemaPerson.classIri,
  ));
  
  // Use class-specific property constants for better discoverability
  graph.add(Triple(
    personNode,
    SchemaPerson.name,
    LiteralNode.fromString('Jane Doe'),
  ));
  
  graph.add(Triple(
    personNode,
    SchemaPerson.email,
    LiteralNode.fromString('jane.doe@example.com'),
  ));
}
```

### For Experienced RDF Developers

If you're already familiar with RDF and know exactly which vocabulary terms you need, you can use the full vocabulary classes:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/schema.dart';

void main() {
  // Create a person with a specific IRI and use full vocabulary terms
  final personIri = IriNode.fromString('http://example.org/person/jane_doe');
  final graph = MemoryGraph();
  
  // Use Schema.Person to specify the type
  graph.add(Triple(
    personIri,
    RdfTerms.type,  // rdf:type from rdf_core
    Schema.Person,
  ));
  
  // Use full vocabulary property constants
  graph.add(Triple(
    personIri,
    Schema.name,
    LiteralNode.fromString('Jane Doe'),
  ));
  
  // Create a complex structure: a postal address
  final addressNode = BlankNode();
  graph.add(Triple(personIri, Schema.address, addressNode));
  graph.add(Triple(addressNode, RdfTerms.type, Schema.PostalAddress));
  graph.add(Triple(
    addressNode,
    Schema.streetAddress,
    LiteralNode.fromString('123 Main St'),
  ));
}
```

## Supported Vocabularies

Currently, the following vocabularies are supported:

- **Schema.org** (`schema`): A collaborative, community activity to create, maintain, and promote schemas for structured data

More vocabularies will be added in future releases.

## 🤝 Contributing

Contributions, bug reports, and feature requests are welcome!

- Fork the repo and submit a PR
- See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines
- Join the discussion in [GitHub Issues](https://github.com/kkalass/rdf_vocabularies/issues)

## 🤖 AI Policy

This project is proudly human-led and human-controlled, with all key decisions, design, and code reviews made by people. At the same time, it stands on the shoulders of LLM giants: generative AI tools are used throughout the development process to accelerate iteration, inspire new ideas, and improve documentation quality. We believe that combining human expertise with the best of AI leads to higher-quality, more innovative open source software.

---

© 2025 Klas Kalaß. Licensed under the MIT License.
