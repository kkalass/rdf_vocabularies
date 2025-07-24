// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:rdf_vocabularies_core/foaf.dart';
import 'package:rdf_vocabularies_core/rdf.dart';
import 'package:rdf_vocabularies_core/rdfs.dart';
import 'package:test/test.dart';

void main() {
  group('Class-Specific Vocabulary Access Tests', () {
    test('Class-specific IRIs are correct', () {
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

    test('Class-specific RDF type property is available', () {
      // Every class should have a rdfType property
      expect(
        FoafPerson.rdfType.iri,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'),
      );
    });
  });
}
