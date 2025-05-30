// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// OnlineAccount class from Foaf vocabulary
///
/// An online account.
///
/// Inherits from:
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - Thing (http://www.w3.org/2002/07/owl#Thing)
///
/// This class provides access to all properties that can be used with OnlineAccount.
/// [Class Reference](http://xmlns.com/foaf/0.1/OnlineAccount)
///
/// [Vocabulary Reference](http://xmlns.com/foaf/0.1/)
class FoafOnlineAccount {
  // Private constructor prevents instantiation
  const FoafOnlineAccount._();

  /// IRI term for the OnlineAccount class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/OnlineAccount',
  );

  /// dnaChecksum [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// A checksum for the DNA of some thing. Joke.
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const dnaChecksum = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/dnaChecksum',
  );

  /// title
  ///
  /// Title (Mr, Mrs, Ms, Dr. etc)
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const title = IriTerm.prevalidated('http://xmlns.com/foaf/0.1/title');

  /// nick
  ///
  /// A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const nick = IriTerm.prevalidated('http://xmlns.com/foaf/0.1/nick');

  /// name [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// A name for some thing.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const name = IriTerm.prevalidated('http://xmlns.com/foaf/0.1/name');

  /// givenName
  ///
  /// The given name of some person.
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const givenName = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/givenName',
  );

  /// givenname
  ///
  /// The given name of some person.
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const givenname = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/givenname',
  );

  /// phone
  ///
  /// A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const phone = IriTerm.prevalidated('http://xmlns.com/foaf/0.1/phone');

  /// homepage [Expects: http://xmlns.com/foaf/0.1/Document]
  ///
  /// A homepage for some thing.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const homepage = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/homepage',
  );

  /// maker [Expects: http://xmlns.com/foaf/0.1/Agent]
  ///
  /// An agent that
  /// made this thing.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const maker = IriTerm.prevalidated('http://xmlns.com/foaf/0.1/maker');

  /// depiction [Expects: http://xmlns.com/foaf/0.1/Image]
  ///
  /// A depiction of some thing.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const depiction = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/depiction',
  );

  /// fundedBy [Expects: http://www.w3.org/2002/07/owl#Thing]
  ///
  /// An organization funding a project or person.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const fundedBy = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/fundedBy',
  );

  /// logo [Expects: http://www.w3.org/2002/07/owl#Thing]
  ///
  /// A logo representing some thing.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const logo = IriTerm.prevalidated('http://xmlns.com/foaf/0.1/logo');

  /// page [Expects: http://xmlns.com/foaf/0.1/Document]
  ///
  /// A page or document about this thing.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const page = IriTerm.prevalidated('http://xmlns.com/foaf/0.1/page');

  /// theme [Expects: http://www.w3.org/2002/07/owl#Thing]
  ///
  /// A theme.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const theme = IriTerm.prevalidated('http://xmlns.com/foaf/0.1/theme');

  /// accountServiceHomepage [Expects: http://xmlns.com/foaf/0.1/Document]
  ///
  /// Indicates a homepage of the service provide for this online account.
  ///
  /// Can be used on: http://xmlns.com/foaf/0.1/OnlineAccount
  ///
  static const accountServiceHomepage = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/accountServiceHomepage',
  );

  /// accountName [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// Indicates the name (identifier) associated with this online account.
  ///
  /// Can be used on: http://xmlns.com/foaf/0.1/OnlineAccount
  ///
  static const accountName = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/accountName',
  );

  /// membershipClass
  ///
  /// Indicates the class of individuals that are a member of a Group
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const membershipClass = IriTerm.prevalidated(
    'http://xmlns.com/foaf/0.1/membershipClass',
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

  /// annotatedProperty from owl vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The property that determines the predicate of an annotated axiom or annotated annotation.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const owlAnnotatedProperty = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#annotatedProperty',
  );

  /// annotatedSource from owl vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The property that determines the subject of an annotated axiom or annotated annotation.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const owlAnnotatedSource = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#annotatedSource',
  );

  /// annotatedTarget from owl vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The property that determines the object of an annotated axiom or annotated annotation.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const owlAnnotatedTarget = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#annotatedTarget',
  );

  /// bottomDataProperty from owl vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// The data property that does not relate any individual to any data value.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const owlBottomDataProperty = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#bottomDataProperty',
  );

  /// bottomObjectProperty from owl vocabulary [Expects: http://www.w3.org/2002/07/owl#Thing]
  ///
  /// The object property that does not relate any two individuals.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const owlBottomObjectProperty = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#bottomObjectProperty',
  );

  /// deprecated from owl vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The annotation property that indicates that a given entity has been deprecated.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const owlDeprecated = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#deprecated',
  );

  /// differentFrom from owl vocabulary [Expects: http://www.w3.org/2002/07/owl#Thing]
  ///
  /// The property that determines that two given individuals are different.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const owlDifferentFrom = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#differentFrom',
  );

  /// members from owl vocabulary [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#List]
  ///
  /// The property that determines the collection of members in either a owl:AllDifferent, owl:AllDisjointClasses or owl:AllDisjointProperties axiom.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const owlMembers = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#members',
  );

  /// sameAs from owl vocabulary [Expects: http://www.w3.org/2002/07/owl#Thing]
  ///
  /// The property that determines that two given individuals are equal.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const owlSameAs = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#sameAs',
  );

  /// topDataProperty from owl vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Literal]
  ///
  /// The data property that relates every individual to every data value.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const owlTopDataProperty = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#topDataProperty',
  );

  /// topObjectProperty from owl vocabulary [Expects: http://www.w3.org/2002/07/owl#Thing]
  ///
  /// The object property that relates every two individuals.
  ///
  /// Can be used on: http://www.w3.org/2002/07/owl#Thing
  ///
  static const owlTopObjectProperty = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#topObjectProperty',
  );

  /// versionInfo from owl vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The annotation property that provides version information for an ontology or another OWL construct.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const owlVersionInfo = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#versionInfo',
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
