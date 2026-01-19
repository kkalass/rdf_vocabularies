> # ⚠️ DEPRECATED - This package has moved!
> 
> **This package is no longer maintained.** It has been integrated into the [locorda](https://github.com/locorda) project and rebranded.
> 
> **Please migrate to:** [`locorda_rdf_terms_schema`](https://pub.dev/packages/locorda_rdf_terms_schema)
> 
> All future development and support will happen in the new package. This repository will be archived.
> 
> **Migration:** Replace `rdf_vocabularies_schema` with `locorda_rdf_terms_schema` in your `pubspec.yaml` and update your imports.

# RDF Vocabularies Schema - Schema.org HTTPS Vocabulary

[![pub package](https://img.shields.io/pub/v/rdf_vocabularies_schema.svg)](https://pub.dev/packages/rdf_vocabularies_schema)
[![build](https://github.com/kkalass/rdf_vocabularies/actions/workflows/ci.yml/badge.svg)](https://github.com/kkalass/rdf_vocabularies/actions)
[![license](https://img.shields.io/github/license/kkalass/rdf_vocabularies.svg)](https://github.com/kkalass/rdf_vocabularies/blob/main/LICENSE)

## Overview

[🌐 **Official Homepage**](https://kkalass.github.io/rdf_vocabularies/)

`rdf_vocabularies_schema` provides type-safe access to the **Schema.org vocabulary with HTTPS URIs** as Dart constants for use with [`rdf_core`](https://pub.dev/packages/rdf_core).

This package contains the **modern Schema.org vocabulary** (~35MB) using HTTPS URIs (`https://schema.org/...`), which is the current standard.

## 📦 Package Selection Guide

| Package | Download Size | Content | Best For |
|---------|---------------|---------|----------|
| **`rdf_vocabularies_schema`** (this package) | **~35MB** | Schema.org HTTPS | Modern Schema.org apps |
| **[`rdf_vocabularies_core`](https://pub.dev/packages/rdf_vocabularies_core)** | ~5MB | Core RDF vocabularies | Essential vocabularies |
| **[`rdf_vocabularies`](https://pub.dev/packages/rdf_vocabularies)** | ~77MB | All vocabularies | Full compatibility |
| **[`rdf_vocabularies_schema_http`](https://pub.dev/packages/rdf_vocabularies_schema_http)** | ~36MB | Schema.org HTTP | Legacy compatibility |

> **💡 Recommendation**: Use this package with `rdf_vocabularies_core` for comprehensive RDF + Schema.org support (~40MB total).

The library is designed for both RDF newcomers and experts, offering structured ways to work with semantic data while maintaining compilation-time safety.

---

## Part of a whole family of projects

If you are looking for more rdf-related functionality, have a look at our companion projects:

* basic graph classes as well as turtle/jsonld/n-triple encoding and decoding: [rdf_core](https://github.com/kkalass/rdf_core) 
* encode and decode rdf/xml format: [rdf_xml](https://github.com/kkalass/rdf_xml) 
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

### Installation

Add the package to your project:

```sh
# Install Schema.org HTTPS vocabulary (~35MB)
dart pub add rdf_vocabularies_schema rdf_core

# Recommended: Also add core vocabularies for RDF, RDFS, OWL, etc. (+5MB)
dart pub add rdf_vocabularies_core
```

### Why Choose Schema.org HTTPS?

- **Modern Standard**: Uses current HTTPS URIs (`https://schema.org/...`)
- **Comprehensive**: Complete Schema.org vocabulary for structured data
- **Web-Ready**: Perfect for JSON-LD and modern web applications
- **SEO-Friendly**: Ideal for structured data markup

## Usage

### For RDF Newcomers: Class-Specific Approach

If you're new to RDF, the class-specific approach guides you to use the correct properties for each type of resource:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_schema/schema.dart';
import 'package:rdf_vocabularies_core/rdf.dart';  // Optional: for RDF.type

void main() {
  final personIri = IriTerm('http://example.org/person/jane_doe');
  
  // Create a graph using Schema.org class-specific constants
  final graph = RdfGraph.fromTriples([
    // Use SchemaPerson class for type-safe property access
    Triple(personIri, Rdf.type, SchemaPerson.classIri),
    Triple(personIri, SchemaPerson.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, SchemaPerson.email, LiteralTerm.string('jane.doe@example.com')),
    Triple(personIri, SchemaPerson.jobTitle, LiteralTerm.string('Software Developer')),
    Triple(personIri, SchemaPerson.birthDate, LiteralTerm('1990-01-01')),
  ]);
  
  print(RdfCore.withStandardCodecs().encode(graph));
```

**Benefits**: IDE autocompletion, compile-time validation, guided Schema.org discovery.

### For RDF Experts: Direct Schema.org Access

Use Schema.org vocabulary classes directly:

```dart
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_schema/schema.dart';
import 'package:rdf_vocabularies_core/rdf.dart';

void main() {
  final productIri = IriTerm('http://example.org/product/123');
  
  // Create structured data for a product
  final graph = RdfGraph.fromTriples([
    Triple(productIri, Rdf.type, Schema.Product),
    Triple(productIri, Schema.name, LiteralTerm.string('Amazing Widget')),
    Triple(productIri, Schema.description, LiteralTerm.string('The best widget you can buy')),
    Triple(productIri, Schema.price, LiteralTerm.string('29.99')),
    Triple(productIri, Schema.priceCurrency, LiteralTerm.string('USD')),
  ]);
  
  print(RdfCore.withStandardCodecs().encode(graph));
}
```

**Benefits**: Maximum flexibility, perfect for JSON-LD, SEO-optimized structured data.

## Schema.org HTTPS Vocabulary

This package provides the complete Schema.org vocabulary using modern HTTPS URIs:

- **All Schema.org Types**: Person, Organization, Product, Event, Place, etc.
- **All Properties**: name, description, url, image, and thousands more
- **HTTPS URIs**: Uses `https://schema.org/...` (current standard)
- **Type Safety**: Class-specific constants for better development experience
- **Rich Documentation**: Each term includes Schema.org descriptions

### Popular Schema.org Types

Some commonly used Schema.org types included:

- **Person**: Individual people
- **Organization**: Companies, institutions, etc.  
- **Product**: Items for sale
- **Event**: Concerts, conferences, etc.
- **Place**: Locations, addresses
- **Article**: Blog posts, news articles
- **Recipe**: Cooking instructions
- **Review**: Product/service reviews
- **WebPage**: Web pages and sites
- **VideoObject**: Video content

## Combining with Core Vocabularies

For comprehensive RDF support, combine with core vocabularies:

```sh
# Add both packages for complete coverage
dart pub add rdf_vocabularies_core rdf_vocabularies_schema rdf_core
```

```dart
import 'package:rdf_vocabularies_core/foaf.dart';  // FOAF vocabulary
import 'package:rdf_vocabularies_schema/schema.dart';  // Schema.org

// Mix vocabularies as needed
final graph = RdfGraph.fromTriples([
  Triple(personIri, Rdf.type, Schema.Person),
  Triple(personIri, Schema.name, LiteralTerm.string('Jane Doe')),
  Triple(personIri, Foaf.age, LiteralTerm.integer(42)),  // FOAF property
]);
```

## Performance Characteristics

- **Zero Runtime Overhead**: Nearly all content consists of compile-time constants
- **Large but Focused**: ~35MB download for complete Schema.org coverage
- **Type Safety**: Catch vocabulary usage errors at compile time
- **IDE Integration**: Get autocompletion and documentation directly in your editor

## HTTP vs HTTPS Schema.org

Schema.org is available in two URI variants:

- **HTTPS** (this package): `https://schema.org/Person` - **modern standard**
- **HTTP** (`rdf_vocabularies_schema_http`): `http://schema.org/Person` - legacy compatibility

- **IDE Integration**: Get autocompletion and documentation directly in your editor

Choose HTTPS unless you specifically need HTTP URIs for compatibility with existing data.

## 🤝 Contributing

Contributions, bug reports, and feature requests are welcome!

- Fork the repo and submit a PR
- See [CONTRIBUTING.md](https://github.com/kkalass/rdf_vocabularies/blob/main/CONTRIBUTING.md) for guidelines
- Join the discussion in [GitHub Issues](https://github.com/kkalass/rdf_vocabularies/issues)

---

© 2025 Klas Kalaß. Licensed under the MIT License.
