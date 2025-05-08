// Example for experienced RDF developers
// This example shows how to use the full Schema vocabulary

import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/schema.dart';
import 'package:rdf_vocabularies/rdf.dart';
import 'package:rdf_vocabularies/src/generated/_index.dart';
import 'package:rdf_vocabularies/src/generated/foaf.dart';
import 'package:rdf_vocabularies/xsd.dart';

/// Example for experienced RDF developers who basically
/// know which predicates from which vocabulary to use and
/// who do not need or want further guidance.
///
/// If you happen to wonder which predicates you can use where and
/// why we say it is a Schema.Person but then use Foaf.age, you
/// might want to check out the [main.dart] example.
void main() {
  // Create a person with a specific IRI
  final personIri = IriTerm('http://example.org/person/jane_doe');

  final addressNode = BlankNodeTerm();

  // Create a graph to hold our data
  final graph = RdfGraph.fromTriples([
    Triple(
      personIri,
      Rdf.type,
      Schema.Person, // Using Schema.Person from the full vocabulary
    ),
    Triple(personIri, Schema.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, Foaf.age, LiteralTerm.integer(42)),
    Triple(personIri, Schema.email, LiteralTerm.string('jane.doe@example.com')),
    Triple(
      personIri,
      Schema.birthDate,
      LiteralTerm('1990-01-01', datatype: Xsd.date),
    ),
    Triple(personIri, Dc.creator, LiteralTerm.string('System')),

    // Create a complex structure: a postal address
    Triple(personIri, Schema.address, addressNode),
    Triple(addressNode, Rdf.type, Schema.PostalAddress),
    Triple(
      addressNode,
      Schema.streetAddress,
      LiteralTerm.string('Somewhere St 123'),
    ),
    Triple(addressNode, Schema.addressLocality, LiteralTerm.string('Anytown')),
    Triple(addressNode, Schema.postalCode, LiteralTerm.string('12345')),
    Triple(addressNode, Schema.addressCountry, LiteralTerm.string('Country')),
  ]);

  // Print the RDF data
  print('Person data using the full Schema vocabulary:');
  var ntriples = NTriplesFormat().createSerializer().write(graph);
  print(ntriples);

  // Accessing data using query patterns
  final janesAddressNode =
      graph
          .findTriples(subject: personIri, predicate: Schema.address)
          .firstOrNull
          ?.object;

  if (janesAddressNode is BlankNodeTerm) {
    final streetAddress =
        graph
            .findTriples(
              subject: janesAddressNode,
              predicate: Schema.streetAddress,
            )
            .firstOrNull
            ?.object;

    if (streetAddress is LiteralTerm) {
      print('\nJane\'s street address: ${streetAddress.value}');
    }
  }
}
