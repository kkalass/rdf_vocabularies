// Example for experienced RDF developers
// This example shows how to use the core RDF vocabularies

import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_core/rdf.dart';
import 'package:rdf_vocabularies_core/rdfs.dart';
import 'package:rdf_vocabularies_core/foaf.dart';
import 'package:rdf_vocabularies_core/xsd.dart';
import 'package:rdf_vocabularies_core/dc.dart';
import 'package:rdf_vocabularies_core/skos.dart';

/// Example for experienced RDF developers who basically
/// know which predicates from which vocabulary to use and
/// who do not need or want further guidance.
///
/// This example demonstrates the use of multiple core vocabularies
/// together: RDF, RDFS, FOAF, Dublin Core, and SKOS.
void main() {
  // Create a person with a specific IRI
  final personIri = IriTerm('http://example.org/person/jane_doe');

  final conceptNode = IriTerm('http://example.org/concepts/researcher');

  // Create a graph to hold our data
  final graph = RdfGraph.fromTriples([
    Triple(
      personIri,
      Rdf.type,
      Foaf.Person, // Using FOAF Person class
    ),
    Triple(personIri, Foaf.name, LiteralTerm.string('Jane Doe')),
    Triple(personIri, Foaf.age, LiteralTerm.integer(42)),
    Triple(personIri, Foaf.mbox, IriTerm('mailto:jane.doe@example.com')),
    Triple(
      personIri,
      Foaf.birthday,
      LiteralTerm('01-01', datatype: Xsd.gMonthDay),
    ),
    Triple(personIri, Dc.creator, LiteralTerm.string('System')),
    Triple(personIri, Dc.subject, LiteralTerm.string('Computer Science')),

    // Define a research concept using SKOS
    Triple(conceptNode, Rdf.type, Skos.Concept),
    Triple(conceptNode, Skos.prefLabel, LiteralTerm.string('Researcher')),
    Triple(
      conceptNode,
      Skos.definition,
      LiteralTerm.string('A person who conducts research'),
    ),

    // Link person to concept
    Triple(personIri, Dc.type, conceptNode),

    // Use RDFS for additional metadata
    Triple(personIri, Rdfs.label, LiteralTerm.string('Dr. Jane Doe')),
    Triple(
      personIri,
      Rdfs.comment,
      LiteralTerm.string('Senior researcher at Example University'),
    ),
  ]);

  // Print the RDF data
  print('Person data using core RDF vocabularies:');
  var ntriplesContent = ntriples.encode(graph);
  print(ntriplesContent);

  // Accessing data using query patterns
  final janesType =
      graph
          .findTriples(subject: personIri, predicate: Dc.type)
          .firstOrNull
          ?.object;

  if (janesType is IriTerm) {
    final conceptLabel =
        graph
            .findTriples(subject: janesType, predicate: Skos.prefLabel)
            .firstOrNull
            ?.object;

    if (conceptLabel is LiteralTerm) {
      print('\nJane is a: ${conceptLabel.value}');
    }
  }

  // Show FOAF properties
  final foafName =
      graph
          .findTriples(subject: personIri, predicate: Foaf.name)
          .firstOrNull
          ?.object;

  final rdfsLabel =
      graph
          .findTriples(subject: personIri, predicate: Rdfs.label)
          .firstOrNull
          ?.object;

  if (foafName is LiteralTerm && rdfsLabel is LiteralTerm) {
    print('FOAF name: ${foafName.value}');
    print('RDFS label: ${rdfsLabel.value}');
  }
}
