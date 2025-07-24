// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:rdf_vocabularies_schema_http/schema_http.dart';
import 'package:test/test.dart';
import 'package:rdf_core/rdf_core.dart';

void main() {
  group('Namespace URI Tests', () {
    test('Vocabulary namespaces are correct', () {
      // Test namespace values
      expect(SchemaHttp.namespace, equals('http://schema.org/'));
    });

    test('Vocabulary prefixes are correct', () {
      // Test prefix values
      expect(SchemaHttp.prefix, equals('schemahttp'));
    });
  });

  group('IriTerm Tests', () {
    test('All vocabulary constants are IriTerm instances', () {
      // Check that constants are IriTerm instances
      expect(SchemaHttp.Person, isA<IriTerm>());
    });

    test('IriTerm objects have correct string representation', () {
      expect(
        SchemaHttp.Person.toString(),
        equals('<http://schema.org/Person>'),
      );
    });
  });
}
