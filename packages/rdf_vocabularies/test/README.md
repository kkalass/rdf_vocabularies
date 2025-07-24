# RDF Vocabularies Meta-Package Tests

This directory contains comprehensive tests for the `rdf_vocabularies` meta-package that verifies the correct integration of all split packages.

## Test Files

### `meta_package_integration_test.dart`
Main integration test that verifies:
- **Core Vocabularies Access**: Tests that RDF, RDFS, OWL, FOAF, Dublin Core, SKOS, and vCard vocabularies are accessible
- **Schema.org Vocabularies Access**: Tests both HTTPS and HTTP variants of Schema.org
- **Cross-vocabulary Integration**: Verifies vocabularies from different packages work together
- **Backward Compatibility**: Ensures original import patterns still work
- **Package Size Optimization**: Confirms the separation is working correctly

### `package_exports_test.dart`
Focused test that verifies the meta-package correctly re-exports all vocabularies from the split packages and maintains the original API.

### `size_optimization_test.dart`
Performance and optimization tests that ensure:
- **Core vocabularies load independently** without Schema.org dependencies
- **Schema vocabularies are properly separated** into HTTPS and HTTP variants
- **Vocabulary initialization is efficient** with pre-computed constants
- **Memory usage is reasonable**
- **Functional completeness** is maintained across all packages

## Test Strategy

The tests follow these principles:

1. **Backward Compatibility**: Ensure users can continue using the same import statements
2. **Package Separation**: Verify that core vocabularies don't include Schema.org content
3. **Functional Equivalence**: Confirm all vocabularies work exactly as before
4. **Performance**: Validate that the split improves package size without affecting performance
5. **Integration**: Test that vocabularies from different packages can be used together

## Running Tests

```bash
# Run all tests
dart test

# Run specific test file
dart test test/meta_package_integration_test.dart

# Run with verbose output
dart test --reporter expanded
```

## Expected Outcomes

All tests should pass, confirming that:
- The meta-package successfully integrates all split packages
- Users experience no breaking changes
- Package size optimization goals are achieved
- Cross-package compatibility is maintained
