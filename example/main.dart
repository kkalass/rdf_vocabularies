// Example for experienced RDF developers
// This example shows how to use the full Schema vocabulary

import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/src/generated/_index.dart';

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
///
/// Just play around with the code and let your IDE show you the documentation
/// for the predicates to get a better understanding of the vocabulary.
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
      SchemaPerson.foafMbox,
      IriTerm('mailto:jane.doe@example.com'),
    ),
    Triple(
      personIri,
      SchemaPerson.foafKnows,
      IriTerm('http://example.org/person/john_smith'),
    ),
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

    // For properties that are not restricted to a specific class, you can use
    // the generated UniversalProperties classes.
    Triple(
      personIri,
      DcUniversalProperties.creator,
      LiteralTerm.string('System'),
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
  print(RdfCore.withStandardCodecs().encode(graph));
}
