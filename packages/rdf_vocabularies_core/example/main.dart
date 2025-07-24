// Example for experienced RDF developers
// This example shows how to use class-specific vocabulary access

import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_core/xsd.dart';
import 'package:rdf_vocabularies_core/dc.dart';
import 'package:rdf_vocabularies_core/foaf.dart';
import 'package:rdf_vocabularies_core/vcard.dart';
import 'package:rdf_vocabularies_core/rdf.dart';

/// Example showing class-specific vocabulary access.
///
/// This demonstrates how to use FoafPerson to access predicates that are
/// specifically available for the FOAF Person class, and VcardAddress for
/// vCard Address properties.
///
/// Your IDE will help you discover the right predicates and provide
/// compile-time validation that you're using properties appropriate
/// for each class type.
void main() {
  // Create a person with a specific IRI
  final personIri = IriTerm('http://example.org/person/jane_doe');

  final addressNode = BlankNodeTerm();

  // Create a graph using class-specific property access
  final graph = RdfGraph.fromTriples([
    // Define the person as a FOAF Person using class-specific access
    Triple(personIri, Rdf.type, FoafPerson.classIri),
    Triple(personIri, FoafPerson.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, FoafPerson.givenName, LiteralTerm.string('Jane')),
    Triple(personIri, FoafPerson.familyName, LiteralTerm.string('Doe')),
    Triple(personIri, FoafPerson.age, LiteralTerm.integer(42)),
    Triple(personIri, FoafPerson.mbox, IriTerm('mailto:jane.doe@example.com')),
    Triple(
      personIri,
      FoafPerson.knows,
      IriTerm('http://example.org/person/john_smith'),
    ),
    Triple(
      personIri,
      FoafPerson.homepage,
      IriTerm('http://jane-doe.example.com'),
    ),
    Triple(
      personIri,
      FoafPerson.birthday,
      LiteralTerm('01-01', datatype: Xsd.gMonthDay),
    ),

    // For properties that work across classes, you can still use
    // the UniversalProperties classes.
    Triple(
      personIri,
      DcUniversalProperties.creator,
      LiteralTerm.string('System'),
    ),

    // Create a vCard address using class-specific access
    Triple(personIri, FoafPerson.based_near, addressNode),
    Triple(addressNode, Rdf.type, VcardAddress.classIri),
    Triple(
      addressNode,
      VcardAddress.hasStreetAddress,
      LiteralTerm.string('Somewhere St 123'),
    ),
    Triple(addressNode, VcardAddress.locality, LiteralTerm.string('Anytown')),
    Triple(
      addressNode,
      VcardAddress.hasPostalCode,
      LiteralTerm.string('12345'),
    ),
    Triple(
      addressNode,
      VcardAddress.hasCountryName,
      LiteralTerm.string('Country'),
    ),
  ]);

  // Print the RDF data
  print('Person data using class-specific property access:');
  print(RdfCore.withStandardCodecs().encode(graph));
}
