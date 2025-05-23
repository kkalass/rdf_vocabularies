// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// Main Rdfs vocabulary class containing all terms
///
/// Contains all terms defined in the http://www.w3.org/2000/01/rdf-schema# vocabulary.
class Rdfs {
  // Private constructor prevents instantiation
  const Rdfs._();

  /// Base IRI for Rdfs vocabulary
  /// [Spec](http://www.w3.org/2000/01/rdf-schema#)
  static const String namespace = 'http://www.w3.org/2000/01/rdf-schema#';
  static const String prefix = 'rdfs';

  /// IRI for rdfs:Resource
  ///
  /// The class resource, everything.
  ///
  static const Resource = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#Resource',
  );

  /// IRI for rdfs:Class
  ///
  /// The class of classes.
  ///
  static const Class = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#Class',
  );

  /// IRI for rdfs:Literal
  ///
  /// The class of literal values, eg. textual strings and integers.
  ///
  static const Literal = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#Literal',
  );

  /// IRI for rdfs:Container
  ///
  /// The class of RDF containers.
  ///
  static const Container = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#Container',
  );

  /// IRI for rdfs:ContainerMembershipProperty
  ///
  /// The class of container membership properties, rdf:_1, rdf:_2, ..., all of which are sub-properties of 'member'.
  ///
  static const ContainerMembershipProperty = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#ContainerMembershipProperty',
  );

  /// IRI for rdfs:Datatype
  ///
  /// The class of RDF datatypes.
  ///
  static const Datatype = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#Datatype',
  );

  /// IRI for rdfs:subClassOf [Expects: http://www.w3.org/2000/01/rdf-schema#Class]
  ///
  /// The subject is a subclass of a class.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Class
  ///
  static const subClassOf = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#subClassOf',
  );

  /// IRI for rdfs:subPropertyOf [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#Property]
  ///
  /// The subject is a subproperty of a property.
  ///
  /// Can be used on: http://www.w3.org/1999/02/22-rdf-syntax-ns#Property
  ///
  static const subPropertyOf = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#subPropertyOf',
  );

  /// IRI for rdfs:comment [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// A description of the subject resource.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const comment = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#comment',
  );

  /// IRI for rdfs:label [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// A human-readable name for the subject.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const label = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#label',
  );

  /// IRI for rdfs:domain [Expects: http://www.w3.org/2000/01/rdf-schema#Class]
  ///
  /// A domain of the subject property.
  ///
  /// Can be used on: http://www.w3.org/1999/02/22-rdf-syntax-ns#Property
  ///
  static const domain = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#domain',
  );

  /// IRI for rdfs:range [Expects: http://www.w3.org/2000/01/rdf-schema#Class]
  ///
  /// A range of the subject property.
  ///
  /// Can be used on: http://www.w3.org/1999/02/22-rdf-syntax-ns#Property
  ///
  static const range = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#range',
  );

  /// IRI for rdfs:seeAlso [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// Further information about the subject resource.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const seeAlso = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#seeAlso',
  );

  /// IRI for rdfs:isDefinedBy [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The definition of the subject resource.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const isDefinedBy = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#isDefinedBy',
  );

  /// IRI for rdfs:member [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// A member of the subject resource.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const member = IriTerm.prevalidated(
    'http://www.w3.org/2000/01/rdf-schema#member',
  );
}
