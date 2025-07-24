# RDF Vocabularies for Dart - Type-safe RDF Constants

[![build](https://github.com/kkalass/rdf_vocabularies/actions/workflows/ci.yml/badge.svg)](https://github.com/kkalass/rdf_vocabularies/actions)
[![codecov](https://codecov.io/gh/kkalass/rdf_vocabularies/branch/main/graph/badge.svg)](https://codecov.io/gh/kkalass/rdf_vocabularies)
[![license](https://img.shields.io/github/license/kkalass/rdf_vocabularies.svg)](https://github.com/kkalass/rdf_vocabularies/blob/main/LICENSE)


## Overview

[🌐 **Official Homepage**](https://kkalass.github.io/rdf_vocabularies/)

`rdf_vocabularies` provides type-safe access to standard RDF vocabulary terms as Dart constants for use with [`rdf_core`](https://pub.dev/packages/rdf_core). 

The library uses a **multi-package architecture** for optimal package size while maintaining full backward compatibility.

> **Note**: This repository contains the workspace root. The actual publishable packages are in the `packages/` directory.

---

## Package Architecture

Starting with version 0.4.0, this project uses a multi-package architecture to optimize package sizes:

### 📦 Available Packages

| Package | Version | Size | Content | Use Case | Source |
|---------|---------|------|---------|----------|---------|
| **[`rdf_vocabularies`](https://pub.dev/packages/rdf_vocabularies)** | [![pub package](https://img.shields.io/pub/v/rdf_vocabularies.svg)](https://pub.dev/packages/rdf_vocabularies) | ~77MB | All vocabularies | Full compatibility | [📁 Source](packages/rdf_vocabularies/) |
| **[`rdf_vocabularies_core`](https://pub.dev/packages/rdf_vocabularies_core)** | [![pub package](https://img.shields.io/pub/v/rdf_vocabularies_core.svg)](https://pub.dev/packages/rdf_vocabularies_core) | ~5MB | Core RDF vocabularies | Most use cases | [📁 Source](packages/rdf_vocabularies_core/) |
| **[`rdf_vocabularies_schema`](https://pub.dev/packages/rdf_vocabularies_schema)** | [![pub package](https://img.shields.io/pub/v/rdf_vocabularies_schema.svg)](https://pub.dev/packages/rdf_vocabularies_schema) | ~35MB | Schema.org (HTTPS) | Schema.org apps | [📁 Source](packages/rdf_vocabularies_schema/) |
| **[`rdf_vocabularies_schema_http`](https://pub.dev/packages/rdf_vocabularies_schema_http)** | [![pub package](https://img.shields.io/pub/v/rdf_vocabularies_schema_http.svg)](https://pub.dev/packages/rdf_vocabularies_schema_http) | ~36MB | Schema.org (HTTP) | Legacy compatibility | [📁 Source](packages/rdf_vocabularies_schema_http/) |

> **💡 Size Note**: The `rdf_vocabularies` meta-package automatically downloads all other packages as dependencies, resulting in a total download of ~77MB. For size optimization, use individual packages.

### 🎯 Choose Your Package

- **For full compatibility**: Use `rdf_vocabularies` (meta-package) - **downloads all vocabularies (~77MB total)**
- **For size optimization**: Use `rdf_vocabularies_core` (~5MB) for common vocabularies only
- **For Schema.org apps**: Use `rdf_vocabularies_core` + `rdf_vocabularies_schema` (~40MB total)
- **For legacy support**: Add `rdf_vocabularies_schema_http` for HTTP Schema.org URIs

---

## Part of a whole family of projects

If you are looking for more rdf-related functionality, have a look at our companion projects:

* basic graph classes as well as turtle/jsonld/n-triple encoding and decoding: [rdf_core](https://github.com/kkalass/rdf_core) 
* encode and decode rdf/xml format: [rdf_xml](https://github.com/kkalass/rdf_xml) 
* generate your own easy-to-use constants for other vocabularies with a build_runner: [rdf_vocabulary_to_dart](https://github.com/kkalass/rdf_vocabulary_to_dart)
* map Dart Objects ↔️ RDF: [rdf_mapper](https://github.com/kkalass/rdf_mapper)

---

## Getting Started

### Installation

Add one or more packages to your `pubspec.yaml`:

```sh
# Option 1: Meta-package with all vocabularies (⚠️ ~77MB total download)
dart pub add rdf_vocabularies rdf_core

# Option 2: Individual packages for size optimization (recommended)

# Core vocabularies (~5MB)
dart pub add rdf_vocabularies_core rdf_core        

# Add only if you need Schema.org (+35MB)
dart pub add rdf_vocabularies_schema rdf_core        
```

### Basic Usage

The library is designed for both RDF newcomers and experts, offering structured ways to work with semantic data while maintaining compilation-time safety.

#### For RDF Newcomers: Class-Specific Approach

Use class-specific constants that guide you to the correct properties:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/foaf.dart';
import 'package:rdf_vocabularies/rdf.dart';
import 'package:rdf_vocabularies/xsd.dart';

void main() {
  final personIri = IriTerm('http://example.org/person/jane_doe');
  
  // Create a graph using class-specific constants
  final graph = RdfGraph.fromTriples([
    // Use FoafPerson class for type-safe property access
    Triple(personIri, Rdf.type, FoafPerson.classIri),
    Triple(personIri, FoafPerson.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, FoafPerson.givenName, LiteralTerm.string('Jane')),
    Triple(personIri, FoafPerson.familyName, LiteralTerm.string('Doe')),
    Triple(personIri, FoafPerson.age, LiteralTerm.integer(42)),
    Triple(personIri, FoafPerson.mbox, IriTerm('mailto:jane.doe@example.com')),
  ]);
  
  print(RdfCore.withStandardCodecs().encode(graph));
}
```

**Benefits**: IDE autocompletion, compile-time validation, guided vocabulary discovery.

#### For RDF Experts: Direct Vocabulary Approach

Use vocabulary classes directly for maximum flexibility:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/foaf.dart';
import 'package:rdf_vocabularies/rdf.dart';
import 'package:rdf_vocabularies/dc.dart';

void main() {
  final personIri = IriTerm('http://example.org/person/jane_doe');
  
  // Create a graph with direct vocabulary access
  final graph = RdfGraph.fromTriples([
    Triple(personIri, Rdf.type, Foaf.Person),
    Triple(personIri, Foaf.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, Foaf.age, LiteralTerm.integer(42)),
    Triple(personIri, Dc.creator, LiteralTerm.string('System')),
  ]);
  
  print(RdfCore.withStandardCodecs().encode(graph));
}
```

**Benefits**: Maximum flexibility, concise syntax, mix vocabularies freely.

## Supported Vocabularies

### Core Package (`rdf_vocabularies_core`)
- **RDF**: Resource Description Framework base vocabulary
- **RDFS**: RDF Schema vocabulary  
- **OWL**: Web Ontology Language
- **FOAF**: Friend of a Friend vocabulary
- **DC/DCTerms**: Dublin Core vocabularies
- **SKOS**: Simple Knowledge Organization System
- **VCard**: vCard ontology for contacts
- **XSD**: XML Schema Datatypes
- **ACL**: Web Access Control vocabulary
- **Contact**: Contact information vocabulary
- **EventOwl**: Event vocabulary
- **GEO**: Geospatial vocabulary
- **LDP**: Linked Data Platform vocabulary
- **Solid**: Solid platform vocabulary
- **VS**: Vocabulary Status ontology

### Schema.org Packages
- **`rdf_vocabularies_schema`**: Schema.org with HTTPS URIs (modern)
- **`rdf_vocabularies_schema_http`**: Schema.org with HTTP URIs (legacy)

## Migration Guide

### From v0.3.x to v0.4.x

The API remains **100% backward compatible**. You can:

1. **Continue using the meta-package** (⚠️ now downloads ~77MB total):
   ```yaml
   dependencies:
     rdf_vocabularies: ^0.4.0  # Same import, but larger download
   ```

2. **Optimize package size** by switching to specific packages (recommended):
   ```yaml
   dependencies:
     rdf_vocabularies_core: ^0.4.0      # Only ~5MB instead of ~77MB
     # Add rdf_vocabularies_schema: ^0.4.0 only if you need Schema.org
   ```

All import statements and API usage remain exactly the same.

## Performance Characteristics

- **Zero Runtime Overhead**: Nearly all content consists of compile-time constants
- **Optimized Package Sizes**: Choose only the vocabularies you need
- **Type Safety**: Catch vocabulary usage errors at compile time
- **IDE Integration**: Get autocompletion and documentation directly in your editor

## 🛣️ Roadmap

- Additional vocabulary support based on community requests
- Enhanced tooling for custom vocabulary generation
- Performance optimizations for large-scale applications

## 🤝 Contributing

Contributions, bug reports, and feature requests are welcome!

- Fork the repo and submit a PR
- See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines
- Join the discussion in [GitHub Issues](https://github.com/kkalass/rdf_vocabularies/issues)

## 🤖 AI Policy

This project is proudly human-led and human-controlled, with all key decisions, design, and code reviews made by people. At the same time, it stands on the shoulders of LLM giants: generative AI tools are used throughout the development process to accelerate iteration, inspire new ideas, and improve documentation quality. We believe that combining human expertise with the best of AI leads to higher-quality, more innovative open source software.

---

© 2025 Klas Kalaß. Licensed under the MIT License.
