// Example for experienced RDF developers
// This example shows how to use the full SchemaHttp vocabulary

import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_schema_http/schema_http.dart';

/// Example how our rdf:class specific dart classes can be used to
/// guide you through the vocabulary.
///
/// Note how we use SchemaHttpPerson to access the predicates available
/// for the Person class and how we use SchemaHttpPostalAddress to access
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
    Triple(personIri, SchemaHttpPerson.rdfType, SchemaHttpPerson.classIri),
    Triple(personIri, SchemaHttpPerson.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, SchemaHttpPerson.foafAge, LiteralTerm.integer(42)),
    Triple(
      personIri,
      SchemaHttpPerson.foafMbox,
      IriTerm('mailto:jane.doe@example.com'),
    ),
    Triple(
      personIri,
      SchemaHttpPerson.foafKnows,
      IriTerm('http://example.org/person/john_smith'),
    ),
    Triple(
      personIri,
      SchemaHttpPerson.email,
      LiteralTerm.string('jane.doe@example.com'),
    ),
    Triple(
      personIri,
      SchemaHttpPerson.birthDate,
      LiteralTerm(
        '1990-01-01',
        datatype: IriTerm('http://www.w3.org/2001/XMLSchemaHttp#date'),
      ),
    ),

    // For properties that are not in this vocabularies, you can use constants
    // from rdf_vocabularies_core or use IriTerm directly.
    Triple(
      personIri,
      IriTerm('http://purl.org/dc/terms/creator'),
      LiteralTerm.string('System'),
    ),

    // Create a complex structure: a postal address
    Triple(personIri, SchemaHttpPerson.address, addressNode),
    Triple(
      addressNode,
      SchemaHttpPostalAddress.rdfType,
      SchemaHttpPostalAddress.classIri,
    ),
    Triple(
      addressNode,
      SchemaHttpPostalAddress.streetAddress,
      LiteralTerm.string('Somewhere St 123'),
    ),
    Triple(
      addressNode,
      SchemaHttpPostalAddress.addressLocality,
      LiteralTerm.string('Anytown'),
    ),
    Triple(
      addressNode,
      SchemaHttpPostalAddress.postalCode,
      LiteralTerm.string('12345'),
    ),
    Triple(
      addressNode,
      SchemaHttpPostalAddress.addressCountry,
      LiteralTerm.string('Country'),
    ),
  ]);

  // Print the RDF data
  print('Person data using the specific SchemaHttp Class vocabulary:');
  print(RdfCore.withStandardCodecs().encode(graph));
}
