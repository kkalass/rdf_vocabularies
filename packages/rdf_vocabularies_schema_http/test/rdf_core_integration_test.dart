// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies_schema_http/schema_http.dart';
import 'package:test/test.dart';

const IriTerm rdfType = IriTerm.prevalidated(
  'http://www.w3.org/1999/02/22-rdf-syntax-ns#type',
);
void main() {
  group('RDF Core Integration Tests', () {
    late RdfGraph graphWithUniversalApproach;
    late RdfGraph graphWithClassSpecificApproach;
    late IriTerm personIri;
    late BlankNodeTerm addressNode;

    setUp(() {
      personIri = IriTerm('http://example.org/person/jane_doe');
      addressNode = BlankNodeTerm();

      // Create a graph using the universal approach
      graphWithUniversalApproach = RdfGraph.fromTriples([
        Triple(personIri, rdfType, SchemaHttp.Person),
        Triple(personIri, SchemaHttp.name, LiteralTerm.string('Jane Doe')),
        Triple(personIri, SchemaHttpPerson.foafAge, LiteralTerm.integer(30)),
        Triple(
          personIri,
          SchemaHttp.email,
          LiteralTerm.string('jane.doe@example.com'),
        ),
        Triple(personIri, SchemaHttp.address, addressNode),
        Triple(addressNode, rdfType, SchemaHttp.PostalAddress),
        Triple(
          addressNode,
          SchemaHttp.streetAddress,
          LiteralTerm.string('123 Main St'),
        ),
        Triple(
          addressNode,
          SchemaHttp.addressLocality,
          LiteralTerm.string('Anytown'),
        ),
        Triple(addressNode, SchemaHttp.postalCode, LiteralTerm.string('12345')),
      ]);

      // Create the same graph using the class-specific approach
      graphWithClassSpecificApproach = RdfGraph.fromTriples([
        Triple(personIri, SchemaHttpPerson.rdfType, SchemaHttpPerson.classIri),
        Triple(
          personIri,
          SchemaHttpPerson.name,
          LiteralTerm.string('Jane Doe'),
        ),
        Triple(personIri, SchemaHttpPerson.foafAge, LiteralTerm.integer(30)),
        Triple(
          personIri,
          SchemaHttpPerson.email,
          LiteralTerm.string('jane.doe@example.com'),
        ),
        Triple(personIri, SchemaHttpPerson.address, addressNode),
        Triple(
          addressNode,
          SchemaHttpPostalAddress.rdfType,
          SchemaHttpPostalAddress.classIri,
        ),
        Triple(
          addressNode,
          SchemaHttpPostalAddress.streetAddress,
          LiteralTerm.string('123 Main St'),
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
      ]);
    });

    test(
      'Universal approach and class-specific approach create identical graphs',
      () {
        // Da wir nicht einfach auf N-Triples serialisieren können, vergleichen wir direkt die Tripel
        // Konvertiere beide Graphen in sortierte Listen von Tripeln
        final universalTriples = graphWithUniversalApproach.triples.toList();
        final classSpecificTriples =
            graphWithClassSpecificApproach.triples.toList();

        // Die Graphen sollten die gleiche Anzahl von Tripeln haben
        expect(universalTriples.length, equals(classSpecificTriples.length));

        // Überprüfe, ob jedes Tripel im universellen Ansatz auch im klassenspezifischen Ansatz vorhanden ist
        for (final triple in universalTriples) {
          // Suche nach einem Tripel mit den gleichen Komponenten im klassenspezifischen Graphen
          final found = classSpecificTriples.any(
            (t) =>
                t.subject.toString() == triple.subject.toString() &&
                t.predicate.toString() == triple.predicate.toString() &&
                t.object.toString() == triple.object.toString(),
          );
          expect(
            found,
            isTrue,
            reason:
                'Tripel $triple nicht im klassenspezifischen Graphen gefunden',
          );
        }
      },
    );

    test('Graph can be queried using Universal approach constants', () {
      // Find all people in the graph
      final people = graphWithUniversalApproach
          .findTriples(predicate: rdfType, object: SchemaHttp.Person)
          .map((triple) => triple.subject);

      expect(people.length, equals(1));
      expect(people.first, equals(personIri));

      // Get Jane's email
      final email = graphWithUniversalApproach
          .findTriples(subject: personIri, predicate: SchemaHttp.email)
          .map((triple) => triple.object);

      expect(email.length, equals(1));
      expect(
        (email.first as LiteralTerm).value,
        equals('jane.doe@example.com'),
      );

      // Get Jane's address
      final address = graphWithUniversalApproach
          .findTriples(subject: personIri, predicate: SchemaHttp.address)
          .map((triple) => triple.object);

      expect(address.length, equals(1));
      expect(address.first, equals(addressNode));

      // Get street address from Jane's address node
      final streetAddress = graphWithUniversalApproach
          .findTriples(
            subject: addressNode,
            predicate: SchemaHttp.streetAddress,
          )
          .map((triple) => triple.object);

      expect(streetAddress.length, equals(1));
      expect((streetAddress.first as LiteralTerm).value, equals('123 Main St'));
    });

    test('Graph can be queried using Class-specific approach constants', () {
      // Find all people in the graph
      final people = graphWithClassSpecificApproach
          .findTriples(
            predicate: SchemaHttpPerson.rdfType,
            object: SchemaHttpPerson.classIri,
          )
          .map((triple) => triple.subject);

      expect(people.length, equals(1));
      expect(people.first, equals(personIri));

      // Get Jane's email
      final email = graphWithClassSpecificApproach
          .findTriples(subject: personIri, predicate: SchemaHttpPerson.email)
          .map((triple) => triple.object);

      expect(email.length, equals(1));
      expect(
        (email.first as LiteralTerm).value,
        equals('jane.doe@example.com'),
      );

      // Get Jane's address
      final address = graphWithClassSpecificApproach
          .findTriples(subject: personIri, predicate: SchemaHttpPerson.address)
          .map((triple) => triple.object);

      expect(address.length, equals(1));
      expect(address.first, equals(addressNode));

      // Get street address from Jane's address node
      final streetAddress = graphWithClassSpecificApproach
          .findTriples(
            subject: addressNode,
            predicate: SchemaHttpPostalAddress.streetAddress,
          )
          .map((triple) => triple.object);

      expect(streetAddress.length, equals(1));
      expect((streetAddress.first as LiteralTerm).value, equals('123 Main St'));
    });

    test('Graph triples can be mixed from both approaches', () {
      // Create a mixed graph using both universal and class-specific constants
      final mixedGraph = RdfGraph.fromTriples([
        // Universal approach
        Triple(personIri, rdfType, SchemaHttp.Person),
        Triple(personIri, SchemaHttp.name, LiteralTerm.string('Jane Doe')),

        // Class-specific approach
        Triple(personIri, SchemaHttpPerson.foafAge, LiteralTerm.integer(30)),
        Triple(
          personIri,
          SchemaHttpPerson.email,
          LiteralTerm.string('jane.doe@example.com'),
        ),
      ]);

      // We should be able to query using both approaches
      final nameWithUniversal =
          mixedGraph
              .findTriples(subject: personIri, predicate: SchemaHttp.name)
              .first
              .object;

      final emailWithClassSpecific =
          mixedGraph
              .findTriples(
                subject: personIri,
                predicate: SchemaHttpPerson.email,
              )
              .first
              .object;

      expect((nameWithUniversal as LiteralTerm).value, equals('Jane Doe'));
      expect(
        (emailWithClassSpecific as LiteralTerm).value,
        equals('jane.doe@example.com'),
      );
    });
  });
}
