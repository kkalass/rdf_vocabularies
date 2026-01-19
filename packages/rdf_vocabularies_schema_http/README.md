> # ⚠️ DEPRECATED - This package has moved!
> 
> **This package is no longer maintained.** It has been integrated into the [locorda](https://github.com/locorda) project and rebranded.
> 
> **Please migrate to:** [`locorda_rdf_terms_schema_http`](https://pub.dev/packages/locorda_rdf_terms_schema_http)
> 
> All future development and support will happen in the new package. This repository will be archived.
> 
> **Migration:** Replace `rdf_vocabularies_schema_http` with `locorda_rdf_terms_schema_http` in your `pubspec.yaml` and update your imports.

# RDF Vocabularies Schema HTTP - Schema.org HTTP Vocabulary

[![pub package](https://img.shields.io/pub/v/rdf_vocabularies_schema_http.svg)](https://pub.dev/packages/rdf_vocabularies_schema_http)
[![build](https://github.com/kkalass/rdf_vocabularies/actions/workflows/ci.yml/badge.svg)](https://github.com/kkalass/rdf_vocabularies/actions)
[![license](https://img.shields.io/github/license/kkalass/rdf_vocabularies.svg)](https://github.com/kkalass/rdf_vocabularies/blob/main/LICENSE)

## Overview

[🌐 **Official Homepage**](https://kkalass.github.io/rdf_vocabularies/)

`rdf_vocabularies_schema_http` provides type-safe access to the **Schema.org vocabulary with HTTP URIs** as Dart constants for use with [`rdf_core`](https://pub.dev/packages/rdf_core).

This package contains the **legacy Schema.org vocabulary** (~36MB) using HTTP URIs (`http://schema.org/...`) for compatibility with existing data and systems.

## 📦 Package Selection Guide

| Package | Download Size | Content | Best For |
|---------|---------------|---------|----------|
| **`rdf_vocabularies_schema_http`** (this package) | **~36MB** | Schema.org HTTP | Legacy compatibility |
| **[`rdf_vocabularies_schema`](https://pub.dev/packages/rdf_vocabularies_schema)** | ~35MB | Schema.org HTTPS | Modern Schema.org apps |
| **[`rdf_vocabularies_core`](https://pub.dev/packages/rdf_vocabularies_core)** | ~5MB | Core RDF vocabularies | Essential vocabularies |
| **[`rdf_vocabularies`](https://pub.dev/packages/rdf_vocabularies)** | ~77MB | All vocabularies | Full compatibility |

> **💡 Recommendation**: Use `rdf_vocabularies_schema` (HTTPS) for new projects. Use this package only for legacy compatibility.

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
# Install Schema.org HTTP vocabulary (~36MB)
dart pub add rdf_vocabularies_schema_http rdf_core

# Recommended: Also add core vocabularies for RDF, RDFS, OWL, etc. (+5MB)
dart pub add rdf_vocabularies_core
```

### When to Use HTTP Schema.org

- **Legacy Compatibility**: Working with existing data using HTTP URIs
- **System Requirements**: Interfacing with systems that expect HTTP URIs
- **Data Migration**: Transitioning from HTTP to HTTPS URIs
- **Mixed Environments**: Supporting both HTTP and HTTPS in the same application

> **⚠️ Note**: For new projects, prefer `rdf_vocabularies_schema` (HTTPS) as it uses the modern standard.

## Usage

### For RDF Newcomers: Class-Specific Approach

If you're new to RDF, the class-specific approach guides you to use the correct properties for each type of resource:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_schema_http/schema_http.dart';
import 'package:rdf_vocabularies_core/rdf.dart';  // Optional: for RDF.type

void main() {
  final personIri = IriTerm('http://example.org/person/jane_doe');
  
  // Create a graph using Schema.org HTTP class-specific constants
  final graph = RdfGraph.fromTriples([
    // Use SchemaHttpPerson class for type-safe property access
    Triple(personIri, Rdf.type, SchemaHttpPerson.classIri),
    Triple(personIri, SchemaHttpPerson.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, SchemaHttpPerson.email, LiteralTerm.string('jane.doe@example.com')),
    Triple(personIri, SchemaHttpPerson.jobTitle, LiteralTerm.string('Software Developer')),
    Triple(personIri, SchemaHttpPerson.birthDate, LiteralTerm('1990-01-01')),
  ]);
  
  print(RdfCore.withStandardCodecs().encode(graph));
```

**Benefits**: IDE autocompletion, compile-time validation, HTTP URI compatibility.

### For RDF Experts: Direct Schema.org HTTP Access

Use Schema.org HTTP vocabulary classes directly:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_schema_http/schema_http.dart';
import 'package:rdf_vocabularies_core/rdf.dart';

void main() {
  final productIri = IriTerm('http://example.org/product/123');
  
  // Create structured data with HTTP Schema.org URIs
  final graph = RdfGraph.fromTriples([
    Triple(productIri, Rdf.type, SchemaHttp.Product),
    Triple(productIri, SchemaHttp.name, LiteralTerm.string('Amazing Widget')),
    Triple(productIri, SchemaHttp.description, LiteralTerm.string('The best widget you can buy')),
    Triple(productIri, SchemaHttp.price, LiteralTerm.string('29.99')),
    Triple(productIri, SchemaHttp.priceCurrency, LiteralTerm.string('USD')),
  ]);
  
  print(RdfCore.withStandardCodecs().encode(graph));
}
```

**Benefits**: Maximum flexibility, HTTP URI compatibility, legacy system support.

## Schema.org HTTP Vocabulary

This package provides the complete Schema.org vocabulary using legacy HTTP URIs:

- **All Schema.org Types**: Person, Organization, Product, Event, Place, etc.
- **All Properties**: name, description, url, image, and thousands more
- **HTTP URIs**: Uses `http://schema.org/...` (legacy format)
- **Type Safety**: Class-specific constants for better development experience
- **Rich Documentation**: Each term includes Schema.org descriptions

### HTTP vs HTTPS Schema.org

Schema.org is available in two URI variants:

| Variant | Package | URIs | Use Case |
|---------|---------|------|----------|
| **HTTP** (this package) | `rdf_vocabularies_schema_http` | `http://schema.org/Person` | Legacy compatibility |
| **HTTPS** (recommended) | `rdf_vocabularies_schema` | `https://schema.org/Person` | Modern standard |

Both packages contain identical Schema.org content - only the URI scheme differs.

## Combining with Core Vocabularies

For comprehensive RDF support, combine with core vocabularies:

```sh
# Add both packages for complete coverage
dart pub add rdf_vocabularies_core rdf_vocabularies_schema_http rdf_core
```

```dart
import 'package:rdf_vocabularies_core/foaf.dart';  // FOAF vocabulary
import 'package:rdf_vocabularies_schema_http/schema_http.dart';  // Schema.org HTTP

// Mix vocabularies as needed
final graph = RdfGraph.fromTriples([
  Triple(personIri, Rdf.type, SchemaHttp.Person),
  Triple(personIri, SchemaHttp.name, LiteralTerm.string('Jane Doe')),
  Triple(personIri, Foaf.age, LiteralTerm.integer(42)),  // FOAF property
]);
```

## Migration to HTTPS

When ready to migrate to HTTPS URIs, simply switch packages:

```sh
# Remove HTTP version
dart pub remove rdf_vocabularies_schema_http

# Add HTTPS version  
dart pub add rdf_vocabularies_schema

# Update imports:
# From: import 'package:rdf_vocabularies_schema_http/schema_http.dart';
# To:   import 'package:rdf_vocabularies_schema/schema.dart';

# And replace all SchemaHttp matches with Schema
```

## Performance Characteristics

- **Zero Runtime Overhead**: Nearly all content consists of compile-time constants
- **Large but Focused**: ~36MB download for complete Schema.org coverage
- **Type Safety**: Catch vocabulary usage errors at compile time
- **IDE Integration**: Get autocompletion and documentation directly in your editor

## 🤝 Contributing

Contributions, bug reports, and feature requests are welcome!

- Fork the repo and submit a PR
- See [CONTRIBUTING.md](https://github.com/kkalass/rdf_vocabularies/blob/main/CONTRIBUTING.md) for guidelines
- Join the discussion in [GitHub Issues](https://github.com/kkalass/rdf_vocabularies/issues)

---

© 2025 Klas Kalaß. Licensed under the MIT License.
