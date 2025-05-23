// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// Main Ldp vocabulary class containing all terms
///
/// Contains all terms defined in the http://www.w3.org/ns/ldp# vocabulary.
class Ldp {
  // Private constructor prevents instantiation
  const Ldp._();

  /// Base IRI for Ldp vocabulary
  /// [Spec](http://www.w3.org/ns/ldp#)
  static const String namespace = 'http://www.w3.org/ns/ldp#';
  static const String prefix = 'ldp';

  /// IRI for ldp:Resource
  ///
  /// A HTTP-addressable resource whose lifecycle is managed by a LDP server.
  ///
  static const Resource = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#Resource',
  );

  /// IRI for ldp:RDFSource
  ///
  /// A Linked Data Platform Resource (LDPR) whose state is represented as RDF.
  ///
  static const RDFSource = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#RDFSource',
  );

  /// IRI for ldp:NonRDFSource
  ///
  /// A Linked Data Platform Resource (LDPR) whose state is NOT represented as RDF.
  ///
  static const NonRDFSource = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#NonRDFSource',
  );

  /// IRI for ldp:Container
  ///
  /// A Linked Data Platform RDF Source (LDP-RS) that also conforms to additional patterns and conventions for managing membership. Readers should refer to the specification defining this ontology for the list of behaviors associated with it.
  ///
  static const Container = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#Container',
  );

  /// IRI for ldp:BasicContainer
  ///
  /// An LDPC that uses a predefined predicate to simply link to its contained resources.
  ///
  static const BasicContainer = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#BasicContainer',
  );

  /// IRI for ldp:DirectContainer
  ///
  /// An LDPC that is similar to a LDP-DC but it allows an indirection with the ability to list as member a resource, such as a URI representing a real-world object, that is different from the resource that is created.
  ///
  static const DirectContainer = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#DirectContainer',
  );

  /// IRI for ldp:IndirectContainer
  ///
  /// An LDPC that has the flexibility of choosing what form the membership triples take.
  ///
  static const IndirectContainer = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#IndirectContainer',
  );

  /// IRI for ldp:PageSortCriterion
  ///
  /// Element in the list of sorting criteria used by the server to assign container members to pages.
  ///
  static const PageSortCriterion = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#PageSortCriterion',
  );

  /// IRI for ldp:Page
  ///
  /// URI signifying that the resource is an in-sequence page resource, as defined by LDP Paging.  Typically used on Link rel='type' response headers.
  ///
  static const Page = IriTerm.prevalidated('http://www.w3.org/ns/ldp#Page');

  /// IRI for ldp:MemberSubject
  ///
  /// Used to indicate default and typical behavior for ldp:insertedContentRelation, where the member-URI value in the membership triple added when a creation request is successful is the URI assigned to the newly created resource.
  ///
  static const MemberSubject = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#MemberSubject',
  );

  /// IRI for ldp:PreferContainment
  ///
  /// URI identifying a LDPC's containment triples, for example to allow clients to express interest in receiving them.
  ///
  static const PreferContainment = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#PreferContainment',
  );

  /// IRI for ldp:PreferMembership
  ///
  /// URI identifying a LDPC's membership triples, for example to allow clients to express interest in receiving them.
  ///
  static const PreferMembership = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#PreferMembership',
  );

  /// IRI for ldp:PreferEmptyContainer
  ///
  /// Archaic alias for ldp:PreferMinimalContainer
  ///
  /// [See also](http://www.w3.org/ns/ldp#PreferMinimalContainer)
  ///
  static const PreferEmptyContainer = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#PreferEmptyContainer',
  );

  /// IRI for ldp:PreferMinimalContainer
  ///
  /// URI identifying the subset of a LDPC's triples present in an empty LDPC, for example to allow clients to express interest in receiving them.  Currently this excludes containment and membership triples, but in the future other exclusions might be added.  This definition is written to automatically exclude those new classes of triples.
  ///
  static const PreferMinimalContainer = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#PreferMinimalContainer',
  );

  /// IRI for ldp:Ascending
  ///
  /// Ascending order.
  ///
  static const Ascending = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#Ascending',
  );

  /// IRI for ldp:Descending
  ///
  /// Descending order.
  ///
  static const Descending = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#Descending',
  );

  /// IRI for ldp:hasMemberRelation [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#Property]
  ///
  /// Indicates which predicate is used in membership triples, and that the membership triple pattern is < membership-constant-URI , object-of-hasMemberRelation, member-URI >.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#Container
  ///
  static const hasMemberRelation = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#hasMemberRelation',
  );

  /// IRI for ldp:isMemberOfRelation [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#Property]
  ///
  /// Indicates which predicate is used in membership triples, and that the membership triple pattern is < member-URI , object-of-isMemberOfRelation, membership-constant-URI >.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#Container
  ///
  static const isMemberOfRelation = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#isMemberOfRelation',
  );

  /// IRI for ldp:membershipResource [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// Indicates the membership-constant-URI in a membership triple.  Depending upon the membership triple pattern a container uses, as indicated by the presence of ldp:hasMemberRelation or ldp:isMemberOfRelation, the membership-constant-URI might occupy either the subject or object position in membership triples.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#Container
  ///
  static const membershipResource = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#membershipResource',
  );

  /// IRI for ldp:insertedContentRelation [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#Property]
  ///
  /// Indicates which triple in a creation request should be used as the member-URI value in the membership triple added when the creation request is successful.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#Container
  ///
  static const insertedContentRelation = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#insertedContentRelation',
  );

  /// IRI for ldp:member [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// LDP servers should use this predicate as the membership predicate if there is no obvious predicate from an application vocabulary to use.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#Resource
  ///
  static const member = IriTerm.prevalidated('http://www.w3.org/ns/ldp#member');

  /// IRI for ldp:contains [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// Links a container with resources created through the container.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#Container
  ///
  static const contains = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#contains',
  );

  /// IRI for ldp:constrainedBy [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// Links a resource with constraints that the server requires requests like creation and update to conform to.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#Resource
  ///
  static const constrainedBy = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#constrainedBy',
  );

  /// IRI for ldp:pageSortCriteria [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#List]
  ///
  /// Link to the list of sorting criteria used by the server in a representation.  Typically used on Link response headers as an extension link relation URI in the rel= parameter.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#Page
  ///
  static const pageSortCriteria = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#pageSortCriteria',
  );

  /// IRI for ldp:pageSortPredicate [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#Property]
  ///
  /// Predicate used to specify the order of the members across a page sequence's in-sequence page resources; it asserts nothing about the order of members in the representation of a single page.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#PageSortCriterion
  ///
  static const pageSortPredicate = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#pageSortPredicate',
  );

  /// IRI for ldp:pageSortOrder [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#Resource]
  ///
  /// The ascending/descending/etc order used to order the members across pages in a page sequence.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#PageSortCriterion
  ///
  static const pageSortOrder = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#pageSortOrder',
  );

  /// IRI for ldp:pageSortCollation [Expects: http://www.w3.org/1999/02/22-rdf-syntax-ns#Property]
  ///
  /// The collation used to order the members across pages in a page sequence when comparing strings.
  ///
  /// Can be used on: http://www.w3.org/ns/ldp#PageSortCriterion
  ///
  static const pageSortCollation = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#pageSortCollation',
  );

  /// IRI for ldp:pageSequence
  ///
  /// Link to a page sequence resource, as defined by LDP Paging.  Typically used to communicate the sorting criteria used to allocate LDPC members to pages.
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const pageSequence = IriTerm.prevalidated(
    'http://www.w3.org/ns/ldp#pageSequence',
  );

  /// IRI for ldp:inbox
  ///
  /// Links a resource to a container where notifications for the resource can be created and discovered.
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const inbox = IriTerm.prevalidated('http://www.w3.org/ns/ldp#inbox');
}
