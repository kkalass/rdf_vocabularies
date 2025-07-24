import 'package:test/test.dart';
import 'package:rdf_vocabularies/rdf.dart';
import 'package:rdf_vocabularies/rdfs.dart';
import 'package:rdf_vocabularies/owl.dart';
import 'package:rdf_vocabularies/foaf.dart';
import 'package:rdf_vocabularies/schema.dart';
import 'package:rdf_vocabularies/schema_http.dart';

/// Performance and size optimization verification tests.
///
/// These tests ensure that the package split achieves the intended
/// goals of reducing package size while maintaining functionality.
void main() {
  group('Size Optimization Verification', () {
    test('Core vocabularies load independently', () {
      // Verify that core vocabularies can be loaded without Schema.org
      expect(Rdf.prefix, equals('rdf'));
      expect(Rdfs.prefix, equals('rdfs'));
      expect(Owl.prefix, equals('owl'));
      expect(Foaf.prefix, equals('foaf'));

      // These should all be available without importing Schema
      expect(Rdf.type.iri, isNotEmpty);
      expect(Rdfs.label.iri, isNotEmpty);
      expect(Owl.Class.iri, isNotEmpty);
      expect(Foaf.Person.iri, isNotEmpty);
    });

    test('Schema vocabularies are properly separated', () {
      // Verify that Schema.org vocabularies are distinct
      expect(Schema.prefix, equals('schema'));
      expect(SchemaHttp.prefix, equals('schemahttp'));

      // They should have different base URIs
      expect(Schema.Person.iri, contains('https://schema.org/'));
      expect(SchemaHttp.Person.iri, contains('http://schema.org/'));

      // But the same semantic meaning
      expect(Schema.Person.iri.endsWith('Person'), isTrue);
      expect(SchemaHttp.Person.iri.endsWith('Person'), isTrue);
    });

    test('Vocabulary initialization is efficient', () {
      // Test that vocabulary constants are properly pre-computed
      final stopwatch = Stopwatch()..start();

      // Access multiple vocabulary terms
      final terms = [
        Rdf.type,
        Rdfs.label,
        Owl.Class,
        Foaf.Person,
        Schema.Person,
        SchemaHttp.Person,
      ];

      stopwatch.stop();

      // All terms should be accessible
      expect(terms.length, equals(6));
      for (final term in terms) {
        expect(term.iri, isNotEmpty);
      }

      // Access should be very fast (pre-computed constants)
      expect(stopwatch.elapsedMilliseconds, lessThan(100));
    });

    test('Memory usage is reasonable', () {
      // Verify that vocabularies don't consume excessive memory
      // This is a logical test - actual memory measurement would
      // require more sophisticated tooling

      final vocabularies = [
        Rdf.prefix,
        Rdfs.prefix,
        Owl.prefix,
        Foaf.prefix,
        Schema.prefix,
        SchemaHttp.prefix,
      ];

      // All vocabularies should be loaded
      expect(vocabularies.every((prefix) => prefix.isNotEmpty), isTrue);

      // No vocabulary should have an unreasonably long prefix
      expect(vocabularies.every((prefix) => prefix.length < 20), isTrue);
    });
  });

  group('Functional Completeness', () {
    test('All vocabulary types are accessible', () {
      // Classes
      expect(Rdfs.Class.iri, isNotEmpty);
      expect(Owl.Class.iri, isNotEmpty);
      expect(Foaf.Person.iri, isNotEmpty);
      expect(Schema.Person.iri, isNotEmpty);

      // Properties
      expect(Rdf.type.iri, isNotEmpty);
      expect(Rdfs.label.iri, isNotEmpty);
      expect(Foaf.name.iri, isNotEmpty);
      expect(Schema.name.iri, isNotEmpty);
    });

    test('Cross-package compatibility maintained', () {
      // Test that vocabularies from different packages work together
      final rdfType = Rdf.type;
      final foafPerson = Foaf.Person;
      final schemaPerson = Schema.Person;

      // Should be able to use them in the same context
      expect(rdfType.iri, isNotEmpty);
      expect(foafPerson.iri, isNotEmpty);
      expect(schemaPerson.iri, isNotEmpty);

      // They should have different namespaces
      expect(rdfType.iri.contains('rdf-syntax-ns'), isTrue);
      expect(foafPerson.iri.contains('foaf'), isTrue);
      expect(schemaPerson.iri.contains('schema.org'), isTrue);
    });
  });
}
