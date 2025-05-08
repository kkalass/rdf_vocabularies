// Example for experienced RDF developers
// This example shows how to use the full Schema vocabulary

import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/schema.dart';
import 'package:rdf_vocabularies/xsd.dart';

/// Example how our rdf:class specific dart classes can be used to
/// guide you through the vocabulary.
///
/// Note how we use SchemaPerson to access the predicates available
/// for the Person class and how we use SchemaPostalAddress to access
/// the predicates available for the PostalAddress class.
///
/// Your IDE will help you to find the right predicates and
/// you will get compile time errors if you use a predicate
/// that is not available for the class you are using.
void main() {
  // Create a person with a specific IRI
  final personIri = IriTerm('http://example.org/person/jane_doe');

  final addressNode = BlankNodeTerm();

  // Create a graph to hold our data
  final graph = RdfGraph.fromTriples([
    Triple(personIri, SchemaPerson.rdfType, SchemaPerson.classIri),
    Triple(personIri, SchemaPerson.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, SchemaPerson.foafAge, LiteralTerm.integer(42)),
    Triple(
      personIri,
      SchemaPerson.email,
      LiteralTerm.string('jane.doe@example.com'),
    ),
    Triple(
      personIri,
      SchemaPerson.birthDate,
      LiteralTerm('1990-01-01', datatype: Xsd.date),
    ),

    // Create a complex structure: a postal address
    Triple(personIri, SchemaPerson.address, addressNode),
    Triple(
      addressNode,
      SchemaPostalAddress.rdfType,
      SchemaPostalAddress.classIri,
    ),
    Triple(
      addressNode,
      SchemaPostalAddress.streetAddress,
      LiteralTerm.string('Somewhere St 123'),
    ),
    Triple(
      addressNode,
      SchemaPostalAddress.addressLocality,
      LiteralTerm.string('Anytown'),
    ),
    Triple(
      addressNode,
      SchemaPostalAddress.postalCode,
      LiteralTerm.string('12345'),
    ),
    Triple(
      addressNode,
      SchemaPostalAddress.addressCountry,
      LiteralTerm.string('Country'),
    ),
  ]);

  // Print the RDF data
  print('Person data using the specific Schema Class vocabulary:');
  print(RdfCore.withStandardFormats().serialize(graph));
}
