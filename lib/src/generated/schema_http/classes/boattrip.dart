// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// BoatTrip class from SchemaHttp vocabulary
///
/// A trip on a commercial ferry line.
///
/// Inherits from:
/// - Intangible (http://schema.org/Intangible)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - Thing (http://schema.org/Thing)
/// - Trip (http://schema.org/Trip)
///
/// This class provides access to all properties that can be used with BoatTrip.
/// [Class Reference](http://schema.org/BoatTrip)
///
/// [Vocabulary Reference](http://schema.org/)
class SchemaHttpBoatTrip {
  // Private constructor prevents instantiation
  const SchemaHttpBoatTrip._();

  /// IRI term for the BoatTrip class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated('http://schema.org/BoatTrip');

  /// additionalType [Expects: http://schema.org/Text, http://schema.org/URL]
  ///
  /// An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the
  /// use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href="http://schema.org/docs/styleguide.html">style guide</a>.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const additionalType = IriTerm.prevalidated(
    'http://schema.org/additionalType',
  );

  /// arrivalBoatTerminal [Expects: http://schema.org/BoatTerminal]
  ///
  /// The terminal or port from which the boat arrives.
  ///
  /// Can be used on: http://schema.org/BoatTrip
  ///
  static const arrivalBoatTerminal = IriTerm.prevalidated(
    'http://schema.org/arrivalBoatTerminal',
  );

  /// arrivalTime [Expects: http://schema.org/DateTime, http://schema.org/Time]
  ///
  /// The expected arrival time.
  ///
  /// Can be used on: http://schema.org/Trip
  ///
  static const arrivalTime = IriTerm.prevalidated(
    'http://schema.org/arrivalTime',
  );

  /// departureBoatTerminal [Expects: http://schema.org/BoatTerminal]
  ///
  /// The terminal or port from which the boat departs.
  ///
  /// Can be used on: http://schema.org/BoatTrip
  ///
  static const departureBoatTerminal = IriTerm.prevalidated(
    'http://schema.org/departureBoatTerminal',
  );

  /// departureTime [Expects: http://schema.org/DateTime, http://schema.org/Time]
  ///
  /// The expected departure time.
  ///
  /// Can be used on: http://schema.org/Trip
  ///
  static const departureTime = IriTerm.prevalidated(
    'http://schema.org/departureTime',
  );

  /// disambiguatingDescription [Expects: http://schema.org/Text]
  ///
  /// A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const disambiguatingDescription = IriTerm.prevalidated(
    'http://schema.org/disambiguatingDescription',
  );

  /// interactionCount
  ///
  /// This property is deprecated, alongside the UserInteraction types on which it depended.
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const interactionCount = IriTerm.prevalidated(
    'http://schema.org/interactionCount',
  );

  /// itinerary [Expects: http://schema.org/ItemList, http://schema.org/Place]
  ///
  /// Destination(s) ( {[Place]} ) that make up a trip. For a trip where destination order is important use {[ItemList]} to specify that order (see examples).
  ///
  /// Can be used on: http://schema.org/Trip
  ///
  static const itinerary = IriTerm.prevalidated('http://schema.org/itinerary');

  /// name [Expects: http://schema.org/Text]
  ///
  /// The name of the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const name = IriTerm.prevalidated('http://schema.org/name');

  /// potentialAction [Expects: http://schema.org/Action]
  ///
  /// Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const potentialAction = IriTerm.prevalidated(
    'http://schema.org/potentialAction',
  );

  /// sameAs [Expects: http://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('http://schema.org/sameAs');

  /// tripOrigin [Expects: http://schema.org/Place]
  ///
  /// The location of origin of the trip, prior to any destination(s).
  ///
  /// Can be used on: http://schema.org/Trip
  ///
  static const tripOrigin = IriTerm.prevalidated(
    'http://schema.org/tripOrigin',
  );

  /// url [Expects: http://schema.org/URL]
  ///
  /// URL of the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const url = IriTerm.prevalidated('http://schema.org/url');

  /// alternateName [Expects: http://schema.org/Text]
  ///
  /// An alias for the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const alternateName = IriTerm.prevalidated(
    'http://schema.org/alternateName',
  );

  /// mainEntityOfPage [Expects: http://schema.org/CreativeWork, http://schema.org/URL]
  ///
  /// Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const mainEntityOfPage = IriTerm.prevalidated(
    'http://schema.org/mainEntityOfPage',
  );

  /// offers [Expects: http://schema.org/Demand, http://schema.org/Offer]
  ///
  /// An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use {[businessFunction]} to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a {[Demand]}. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
  ///
  ///
  /// Can be used on: http://schema.org/AggregateOffer, http://schema.org/CreativeWork, http://schema.org/EducationalOccupationalProgram, http://schema.org/Event, http://schema.org/MenuItem, http://schema.org/Product, http://schema.org/Service, http://schema.org/Trip
  ///
  static const offers = IriTerm.prevalidated('http://schema.org/offers');

  /// partOfTrip [Expects: http://schema.org/Trip]
  ///
  /// Identifies that this {[Trip]} is a subTrip of another Trip.  For example Day 1, Day 2, etc. of a multi-day trip.
  ///
  /// Can be used on: http://schema.org/Trip
  ///
  static const partOfTrip = IriTerm.prevalidated(
    'http://schema.org/partOfTrip',
  );

  /// provider [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
  ///
  /// Can be used on: http://schema.org/Action, http://schema.org/CreativeWork, http://schema.org/EducationalOccupationalProgram, http://schema.org/FinancialIncentive, http://schema.org/Invoice, http://schema.org/ParcelDelivery, http://schema.org/Reservation, http://schema.org/Service, http://schema.org/Trip
  ///
  static const provider = IriTerm.prevalidated('http://schema.org/provider');

  /// subTrip [Expects: http://schema.org/Trip]
  ///
  /// Identifies a {[Trip]} that is a subTrip of this Trip.  For example Day 1, Day 2, etc. of a multi-day trip.
  ///
  /// Can be used on: http://schema.org/Trip
  ///
  static const subTrip = IriTerm.prevalidated('http://schema.org/subTrip');

  /// subjectOf [Expects: http://schema.org/CreativeWork, http://schema.org/Event]
  ///
  /// A CreativeWork or Event about this Thing.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const subjectOf = IriTerm.prevalidated('http://schema.org/subjectOf');

  /// description [Expects: http://schema.org/Text, http://schema.org/TextObject]
  ///
  /// A description of the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const description = IriTerm.prevalidated(
    'http://schema.org/description',
  );

  /// image [Expects: http://schema.org/ImageObject, http://schema.org/URL]
  ///
  /// An image of the item. This can be a {[URL]} or a fully described {[ImageObject]}.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const image = IriTerm.prevalidated('http://schema.org/image');

  /// identifier [Expects: http://schema.org/PropertyValue, http://schema.org/Text, http://schema.org/URL]
  ///
  /// The identifier property represents any kind of identifier for any kind of {[Thing]}, such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.
  ///
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const identifier = IriTerm.prevalidated(
    'http://schema.org/identifier',
  );

  /// source
  ///
  ///
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const source = IriTerm.prevalidated('http://schema.org/source');

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

  /// deprecated from owl vocabulary [Expects: http://www.w3.org/2000/01/rdf-schema#Resource]
  ///
  /// The annotation property that indicates that a given entity has been deprecated.
  ///
  /// Can be used on: http://www.w3.org/2000/01/rdf-schema#Resource
  ///
  static const owlDeprecated = IriTerm.prevalidated(
    'http://www.w3.org/2002/07/owl#deprecated',
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
