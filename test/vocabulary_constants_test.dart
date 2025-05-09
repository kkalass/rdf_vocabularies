// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:rdf_core/rdf_core.dart';
import 'package:rdf_vocabularies/rdf.dart';
import 'package:rdf_vocabularies/rdfs.dart';
import 'package:rdf_vocabularies/owl.dart';
import 'package:rdf_vocabularies/schema.dart';
import 'package:rdf_vocabularies/foaf.dart';
import 'package:rdf_vocabularies/xsd.dart';

void main() {
  group('Namespace URI Tests', () {
    test('Vocabulary namespaces are correct', () {
      // Test namespace values
      expect(
        Rdf.namespace,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#'),
      );
      expect(Rdfs.namespace, equals('http://www.w3.org/2000/01/rdf-schema#'));
      expect(Owl.namespace, equals('http://www.w3.org/2002/07/owl#'));
      expect(Schema.namespace, equals('https://schema.org/'));
      expect(Foaf.namespace, equals('http://xmlns.com/foaf/0.1/'));
      expect(Xsd.namespace, equals('http://www.w3.org/2001/XMLSchema#'));
    });

    test('Vocabulary prefixes are correct', () {
      // Test prefix values
      expect(Rdf.prefix, equals('rdf'));
      expect(Rdfs.prefix, equals('rdfs'));
      expect(Owl.prefix, equals('owl'));
      expect(Schema.prefix, equals('schema'));
      expect(Foaf.prefix, equals('foaf'));
      expect(Xsd.prefix, equals('xsd'));
    });
  });

  group('Common RDF Terms Tests', () {
    test('RDF core terms have correct IRIs', () {
      expect(
        Rdf.type.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'),
      );
      expect(
        Rdf.Property.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#Property'),
      );
      expect(
        Rdf.value.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#value'),
      );
      expect(
        Rdf.nil.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#nil'),
      );
    });

    test('RDFS core terms have correct IRIs', () {
      expect(
        Rdfs.Class.iri,
        equals('http://www.w3.org/2000/01/rdf-schema#Class'),
      );
      expect(
        Rdfs.Resource.iri,
        equals('http://www.w3.org/2000/01/rdf-schema#Resource'),
      );
      expect(
        Rdfs.label.iri,
        equals('http://www.w3.org/2000/01/rdf-schema#label'),
      );
      expect(
        Rdfs.comment.iri,
        equals('http://www.w3.org/2000/01/rdf-schema#comment'),
      );
    });
  });

  group('IriTerm Tests', () {
    test('All vocabulary constants are IriTerm instances', () {
      // Check that constants are IriTerm instances
      expect(Rdf.type, isA<IriTerm>());
      expect(Rdfs.Class, isA<IriTerm>());
      expect(Owl.Class, isA<IriTerm>());
      expect(Schema.Person, isA<IriTerm>());
      expect(Foaf.Person, isA<IriTerm>());
      expect(Xsd.string, isA<IriTerm>());
    });

    test('IriTerm objects have correct string representation', () {
      expect(
        Rdf.type.toString(),
        equals('<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'),
      );
      expect(Schema.Person.toString(), equals('<https://schema.org/Person>'));
    });
  });
}
