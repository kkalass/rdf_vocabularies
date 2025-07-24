// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:rdf_vocabularies_schema_http/src/generated/schema_http/index.dart';
import 'package:test/test.dart';

void main() {
  group('Class-Specific Vocabulary Access Tests', () {
    test('Class-specific IRIs are correct', () {
      expect(SchemaHttpPerson.classIri.iri, equals('http://schema.org/Person'));
      expect(
        SchemaHttpPostalAddress.classIri.iri,
        equals('http://schema.org/PostalAddress'),
      );
    });

    test('Class-specific properties are correct', () {
      // Test SchemaPerson properties
      expect(SchemaHttpPerson.name.iri, equals('http://schema.org/name'));
      expect(
        SchemaHttpPerson.givenName.iri,
        equals('http://schema.org/givenName'),
      );
      expect(
        SchemaHttpPerson.familyName.iri,
        equals('http://schema.org/familyName'),
      );
      expect(SchemaHttpPerson.email.iri, equals('http://schema.org/email'));
      expect(
        SchemaHttpPerson.birthDate.iri,
        equals('http://schema.org/birthDate'),
      );
      expect(SchemaHttpPerson.address.iri, equals('http://schema.org/address'));

      // Test SchemaPostalAddress properties
      expect(
        SchemaHttpPostalAddress.streetAddress.iri,
        equals('http://schema.org/streetAddress'),
      );
      expect(
        SchemaHttpPostalAddress.addressLocality.iri,
        equals('http://schema.org/addressLocality'),
      );
      expect(
        SchemaHttpPostalAddress.postalCode.iri,
        equals('http://schema.org/postalCode'),
      );
      expect(
        SchemaHttpPostalAddress.addressCountry.iri,
        equals('http://schema.org/addressCountry'),
      );
    });

    test('Class-specific RDF type property is available', () {
      // Every class should have a rdfType property
      expect(
        SchemaHttpPerson.rdfType.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'),
      );
      expect(
        SchemaHttpPostalAddress.rdfType.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'),
      );
    });

    test(
      'Cross-vocabulary references are available in class-specific access',
      () {
        // Test that SchemaPerson has access to FOAF terms that can be used with Person
        expect(
          SchemaHttpPerson.foafName.iri,
          equals('http://xmlns.com/foaf/0.1/name'),
        );
        expect(
          SchemaHttpPerson.foafAge.iri,
          equals('http://xmlns.com/foaf/0.1/age'),
        );
      },
    );
  });
}
