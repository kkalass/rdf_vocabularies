# RDF Vocabularies (Meta-Package) - All RDF Vocabularies

[![pub package](https://img.shields.io/pub/v/rdf_vocabularies.svg)](https://pub.dev/packages/rdf_vocabularies)
[![build](https://github.com/kkalass/rdf_vocabularies/actions/workflows/ci.yml/badge.svg)](https://github.com/kkalass/rdf_vocabularies/actions)
[![codecov](https://codecov.io/gh/kkalass/rdf_vocabularies/branch/main/graph/badge.svg)](https://codecov.io/gh/kkalass/rdf_vocabularies)
[![license](https://img.shields.io/github/license/kkalass/rdf_vocabularies.svg)](https://github.com/kkalass/rdf_vocabularies/blob/main/LICENSE)

## Overview

[🌐 **Official Homepage**](https://kkalass.github.io/rdf_vocabularies/)

**Meta-package** that includes all RDF vocabularies for maximum convenience and backward compatibility. This package automatically includes:

- **Core vocabularies** (`rdf_vocabularies_core`): RDF, RDFS, OWL, FOAF, Dublin Core, SKOS, etc.
- **Schema.org HTTPS** (`rdf_vocabularies_schema`): Modern Schema.org vocabulary
- **Schema.org HTTP** (`rdf_vocabularies_schema_http`): Legacy Schema.org vocabulary

> **⚠️ Size Note**: This meta-package downloads **~77MB total** as it includes all vocabularies. For size optimization, consider using individual packages instead.

## 📦 Package Selection Guide

| Package | Download Size | Content | Best For |
|---------|---------------|---------|----------|
| **`rdf_vocabularies`** (this package) | **~77MB** | All vocabularies | Full compatibility, convenience |
| **[`rdf_vocabularies_core`](https://pub.dev/packages/rdf_vocabularies_core)** | ~5MB | Core RDF vocabularies | Most applications |
| **[`rdf_vocabularies_schema`](https://pub.dev/packages/rdf_vocabularies_schema)** | ~35MB | Schema.org HTTPS | Modern Schema.org apps |
| **[`rdf_vocabularies_schema_http`](https://pub.dev/packages/rdf_vocabularies_schema_http)** | ~36MB | Schema.org HTTP | Legacy compatibility |

The library is designed for both RDF newcomers and experts, offering structured ways to work with semantic data while maintaining compilation-time safety.

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

Add the package to your project:

```sh
# Install the meta-package (includes all vocabularies - ~77MB total download)
dart pub add rdf_vocabularies rdf_core

# Or for size optimization, use individual packages instead:
# dart pub add rdf_vocabularies_core rdf_core  # Only ~5MB
```

> **💡 Size Optimization**: Consider using `rdf_vocabularies_core` instead for most use cases to reduce download size from ~77MB to ~5MB.

## Usage

### For RDF Newcomers: Class-Specific Approach

If you're new to RDF, the class-specific approach guides you to use the correct properties for each type of resource:

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
```

**Benefits**: IDE autocompletion, compile-time validation, guided vocabulary discovery.

### For RDF Experts: Direct Vocabulary Approach

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

## Included Vocabularies

This meta-package includes all available RDF vocabularies:

### Core Vocabularies (~5MB)
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

### Schema.org Vocabularies (~71MB)
- **Schema.org HTTPS** (~35MB): Modern Schema.org vocabulary with HTTPS URIs
- **Schema.org HTTP** (~36MB): Legacy Schema.org vocabulary with HTTP URIs

## Performance Characteristics

- **Zero Runtime Overhead**: Nearly all content consists of compile-time constants
- **Type Safety**: Catch vocabulary usage errors at compile time
- **IDE Integration**: Get autocompletion and documentation directly in your editor
- **Download Size**: ~77MB total (includes all vocabularies)

## Alternative Packages

For size optimization, consider these individual packages:

```sh
# Core vocabularies only (~5MB) - recommended for most apps
dart pub add rdf_vocabularies_core rdf_core

# Add Schema.org HTTPS if needed (+35MB)
dart pub add rdf_vocabularies_schema rdf_core

# Add Schema.org HTTP for legacy compatibility (+36MB)  
dart pub add rdf_vocabularies_schema_http rdf_core
```

## Migration from v0.3.x

The API remains **100% backward compatible**. Simply update your dependency and optionally optimize package size:

```sh
# Continue using meta-package (but now downloads ~77MB)
dart pub upgrade

# Or optimize size by switching to core package
dart pub remove rdf_vocabularies
dart pub add rdf_vocabularies_core
# No import changes needed!
```

## 🤝 Contributing

Contributions, bug reports, and feature requests are welcome!

- Fork the repo and submit a PR
- See [CONTRIBUTING.md](https://github.com/kkalass/rdf_vocabularies/blob/main/CONTRIBUTING.md) for guidelines
- Join the discussion in [GitHub Issues](https://github.com/kkalass/rdf_vocabularies/issues)

---

© 2025 Klas Kalaß. Licensed under the MIT License.
