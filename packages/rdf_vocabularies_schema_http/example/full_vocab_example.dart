// Example for experienced RDF developers
// This example shows how to use the full Schema vocabulary

import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_schema_http/schema_http.dart';

/// Example for experienced RDF developers who basically
/// know which predicates from which vocabulary to use and
/// who do not need or want further guidance.
///
/// If you happen to wonder which predicates you can use where and
/// why we say it is a SchemaHttp.Person but then use Foaf.age, you
/// might want to check out the [main.dart] example.
void main() {
  // Create a person with a specific IRI
  final personIri = IriTerm('http://example.org/person/jane_doe');
  // Usually, you would use rdf_vocabularies_core package to access Rdf.type
  // this is just to show that you can use IriTerm directly if you prefer.
  final rdfType = IriTerm('http://www.w3.org/1999/02/22-rdf-syntax-ns#type');
  final addressNode = BlankNodeTerm();

  // Create a graph to hold our data
  final graph = RdfGraph.fromTriples([
    Triple(
      personIri,
      rdfType,
      SchemaHttp.Person, // Using SchemaHttp.Person from the full vocabulary
    ),
    Triple(personIri, SchemaHttp.name, LiteralTerm.string('Jane Doe')),
    // Triple(personIri, Foaf.age, LiteralTerm.integer(42)),
    Triple(
      personIri,
      SchemaHttp.email,
      LiteralTerm.string('jane.doe@example.com'),
    ),
    /*
    Triple(
      personIri,
      SchemaHttp.birthDate,
      LiteralTerm('1990-01-01', datatype: Xsd.date),
    ),
    */
    //Triple(personIri, Dc.creator, LiteralTerm.string('System')),

    // Create a complex structure: a postal address
    Triple(personIri, SchemaHttp.address, addressNode),
    Triple(addressNode, rdfType, SchemaHttp.PostalAddress),
    Triple(
      addressNode,
      SchemaHttp.streetAddress,
      LiteralTerm.string('Somewhere St 123'),
    ),
    Triple(
      addressNode,
      SchemaHttp.addressLocality,
      LiteralTerm.string('Anytown'),
    ),
    Triple(addressNode, SchemaHttp.postalCode, LiteralTerm.string('12345')),
    Triple(
      addressNode,
      SchemaHttp.addressCountry,
      LiteralTerm.string('Country'),
    ),
  ]);

  // Print the RDF data
  print('Person data using the full Schema vocabulary:');
  var ntriplesContent = ntriples.encode(graph);
  print(ntriplesContent);

  // Accessing data using query patterns
  final janesAddressNode =
      graph
          .findTriples(subject: personIri, predicate: SchemaHttp.address)
          .firstOrNull
          ?.object;

  if (janesAddressNode is BlankNodeTerm) {
    final streetAddress =
        graph
            .findTriples(
              subject: janesAddressNode,
              predicate: SchemaHttp.streetAddress,
            )
            .firstOrNull
            ?.object;

    if (streetAddress is LiteralTerm) {
      print('\nJane\'s street address: ${streetAddress.value}');
    }
  }
}
