// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:rdf_vocabularies/src/generated/foaf/classes/person.dart';
import 'package:rdf_vocabularies/src/generated/rdf/classes/property.dart';
import 'package:rdf_vocabularies/src/generated/rdfs/classes/class.dart';
import 'package:rdf_vocabularies/src/generated/schema/classes/person.dart';
import 'package:rdf_vocabularies/src/generated/schema/classes/postaladdress.dart';
import 'package:test/test.dart';

void main() {
  group('Class-Specific Vocabulary Access Tests', () {
    test('Class-specific IRIs are correct', () {
      expect(SchemaPerson.classIri.iri, equals('https://schema.org/Person'));
      expect(
        SchemaPostalAddress.classIri.iri,
        equals('https://schema.org/PostalAddress'),
      );
      expect(
        FoafPerson.classIri.iri,
        equals('http://xmlns.com/foaf/0.1/Person'),
      );
      expect(
        RdfProperty.classIri.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#Property'),
      );
      expect(
        RdfsClass.classIri.iri,
        equals('http://www.w3.org/2000/01/rdf-schema#Class'),
      );
    });

    test('Class-specific properties are correct', () {
      // Test SchemaPerson properties
      expect(SchemaPerson.name.iri, equals('https://schema.org/name'));
      expect(
        SchemaPerson.givenName.iri,
        equals('https://schema.org/givenName'),
      );
      expect(
        SchemaPerson.familyName.iri,
        equals('https://schema.org/familyName'),
      );
      expect(SchemaPerson.email.iri, equals('https://schema.org/email'));
      expect(
        SchemaPerson.birthDate.iri,
        equals('https://schema.org/birthDate'),
      );
      expect(SchemaPerson.address.iri, equals('https://schema.org/address'));

      // Test SchemaPostalAddress properties
      expect(
        SchemaPostalAddress.streetAddress.iri,
        equals('https://schema.org/streetAddress'),
      );
      expect(
        SchemaPostalAddress.addressLocality.iri,
        equals('https://schema.org/addressLocality'),
      );
      expect(
        SchemaPostalAddress.postalCode.iri,
        equals('https://schema.org/postalCode'),
      );
      expect(
        SchemaPostalAddress.addressCountry.iri,
        equals('https://schema.org/addressCountry'),
      );
    });

    test('Class-specific RDF type property is available', () {
      // Every class should have a rdfType property
      expect(
        SchemaPerson.rdfType.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'),
      );
      expect(
        SchemaPostalAddress.rdfType.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'),
      );
      expect(
        FoafPerson.rdfType.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'),
      );
    });

    test(
      'Cross-vocabulary references are available in class-specific access',
      () {
        // Test that SchemaPerson has access to FOAF terms that can be used with Person
        expect(
          SchemaPerson.foafName.iri,
          equals('http://xmlns.com/foaf/0.1/name'),
        );
        expect(
          SchemaPerson.foafAge.iri,
          equals('http://xmlns.com/foaf/0.1/age'),
        );
      },
    );
  });
}
