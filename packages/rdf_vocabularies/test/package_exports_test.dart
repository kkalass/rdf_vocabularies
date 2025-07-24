import 'package:test/test.dart';
import 'package:rdf_vocabularies/rdf.dart';
import 'package:rdf_vocabularies/schema.dart';

/// Tests that verify the meta-package correctly re-exports
/// all vocabularies from the split packages.
void main() {
  group('Package Export Verification', () {
    test('Core package exports are working', () {
      // Test that we can access RDF vocabulary through meta-package
      expect(
        Rdf.namespace,
        equals('http://www.w3.org/1999/02/22-rdf-syntax-ns#'),
      );
      expect(
        Rdf.type.toString(),
        equals('<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'),
      );
    });

    test('Schema package exports are working', () {
      // Test that we can access Schema vocabulary through meta-package
      expect(Schema.prefix, equals('schema'));
      expect(Schema.Person.toString(), contains('https://schema.org/Person'));
    });

    test('Meta-package maintains original API', () {
      // Verify that users can still use the same import pattern
      // as they did with the original monolithic package

      // This should work exactly as before:
      // import 'package:rdf_vocabularies/rdf.dart';
      // import 'package:rdf_vocabularies/schema.dart';

      expect(Rdf.prefix, equals('rdf'));
      expect(Schema.prefix, equals('schema'));
    });
  });
}
