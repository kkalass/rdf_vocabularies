// Example for experienced RDF developers
// This example shows how to use the core RDF vocabularies directly

import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_core/xsd.dart';
import 'package:rdf_vocabularies_core/dc.dart';
import 'package:rdf_vocabularies_core/foaf.dart';
import 'package:rdf_vocabularies_core/vcard.dart';
import 'package:rdf_vocabularies_core/rdf.dart';

/// Example showing direct vocabulary access without class-specific guidance.
///
/// This approach uses the vocabulary classes (Foaf, Vcard, etc.) directly
/// to access properties like Foaf.name, Vcard.locality, etc.
///
/// For developers who know exactly which properties they need and prefer
/// the direct approach. If you want IDE guidance and compile-time validation
/// for class-specific properties, see the main.dart example which uses
/// FoafPerson and VcardAddress classes.
///
/// This example demonstrates using multiple core vocabularies together:
/// RDF, FOAF, vCard, Dublin Core, and XSD datatypes.
void main() {
  // Create a person with a specific IRI
  final personIri = IriTerm('http://example.org/person/jane_doe');

  final addressNode = BlankNodeTerm();

  // Create a graph using direct vocabulary property access
  final graph = RdfGraph.fromTriples([
    // Define the person as a FOAF Person using direct vocabulary access
    Triple(personIri, Rdf.type, Foaf.Person),
    Triple(personIri, Foaf.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, Foaf.givenName, LiteralTerm.string('Jane')),
    Triple(personIri, Foaf.familyName, LiteralTerm.string('Doe')),
    Triple(personIri, Foaf.age, LiteralTerm.integer(42)),
    Triple(personIri, Foaf.mbox, IriTerm('mailto:jane.doe@example.com')),
    Triple(
      personIri,
      Foaf.knows,
      IriTerm('http://example.org/person/john_smith'),
    ),
    Triple(personIri, Foaf.homepage, IriTerm('http://jane-doe.example.com')),
    Triple(
      personIri,
      Foaf.birthday,
      LiteralTerm('01-01', datatype: Xsd.gMonthDay),
    ),

    // For properties that are not restricted to a specific class, you can use
    // the generated UniversalProperties classes.
    Triple(
      personIri,
      DcUniversalProperties.creator,
      LiteralTerm.string('System'),
    ),

    // Create a vCard address using direct vocabulary access
    Triple(personIri, Foaf.based_near, addressNode),
    Triple(addressNode, Rdf.type, Vcard.Address),
    Triple(
      addressNode,
      Vcard.hasStreetAddress,
      LiteralTerm.string('Somewhere St 123'),
    ),
    Triple(addressNode, Vcard.locality, LiteralTerm.string('Anytown')),
    Triple(addressNode, Vcard.hasPostalCode, LiteralTerm.string('12345')),
    Triple(addressNode, Vcard.hasCountryName, LiteralTerm.string('Country')),
  ]);

  // Print the RDF data
  print('Person data using direct vocabulary access:');
  print(RdfCore.withStandardCodecs().encode(graph));
}
