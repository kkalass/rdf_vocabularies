// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// AllDisjointClasses class from Owl vocabulary
///
/// The class of collections of pairwise disjoint classes.
///
/// Inherits from:
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
///
/// This class provides access to all properties that can be used with AllDisjointClasses.
/// [Class Reference](http://www.w3.org/2002/07/owl#AllDisjointClasses)
///
/// [Vocabulary Reference](http://www.w3.org/2002/07/owl#)
class OwlAllDisjointClasses {
  // Private constructor prevents instantiation
  const OwlAllDisjointClasses._();

  /// IRI term for the AllDisjointClasses class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#AllDisjointClasses',
  );

  /// annotatedProperty [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The property that determines the predicate of an annotated axiom or annotated annotation.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const annotatedProperty = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#annotatedProperty',
  );

  /// annotatedSource [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The property that determines the subject of an annotated axiom or annotated annotation.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const annotatedSource = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#annotatedSource',
  );

  /// annotatedTarget [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The property that determines the object of an annotated axiom or annotated annotation.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const annotatedTarget = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#annotatedTarget',
  );

  /// deprecated [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The annotation property that indicates that a given entity has been deprecated.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const deprecated = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#deprecated',
  );

  /// members [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#List]
  ///
  /// The property that determines the collection of members in either a owl:AllDifferent, owl:AllDisjointClasses or owl:AllDisjointProperties axiom.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const members = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#members',
  );

  /// versionInfo [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The annotation property that provides version information for an ontology or another OWL construct.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const versionInfo = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#versionInfo',
  );

  /// type from rdf vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Class]
  ///
  /// The subject is an instance of a class.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const rdfType = IriTerm.prevalidated(
    'http://www.w3.org/1999/02/22-rdf-syntax-ns#type',
  );

  /// value from rdf vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// Idiomatic property used for structured values.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const rdfValue = IriTerm.prevalidated(
    'http://www.w3.org/1999/02/22-rdf-syntax-ns#value',
  );

  /// comment from rdfs vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// A description of the subject resource.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const rdfsComment = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#comment',
  );

  /// label from rdfs vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// A human-readable name for the subject.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const rdfsLabel = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#label',
  );

  /// seeAlso from rdfs vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// Further information about the subject resource.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const rdfsSeeAlso = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#seeAlso',
  );

  /// isDefinedBy from rdfs vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The definition of the subject resource.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const rdfsIsDefinedBy = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#isDefinedBy',
  );

  /// member from rdfs vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// A member of the subject resource.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const rdfsMember = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#member',
  );

  /// abstract_ from bibo vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// A summary of the resource.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const biboAbstract_ = IriTerm.prevalidated(
    'http://purl.org/ontology/bibo/abstract',
  );
}
