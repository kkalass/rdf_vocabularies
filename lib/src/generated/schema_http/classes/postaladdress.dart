// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// PostalAddress class from SchemaHttp vocabulary
///
/// The mailing address.
///
/// Inherits from:
/// - ContactPoint (http://schema.org/ContactPoint)
/// - Intangible (http://schema.org/Intangible)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - StructuredValue (http://schema.org/StructuredValue)
/// - Thing (http://schema.org/Thing)
///
/// This class provides access to all properties that can be used with PostalAddress.
/// [Class Reference](http://schema.org/PostalAddress)
///
/// [Vocabulary Reference](http://schema.org/)
class SchemaHttpPostalAddress {
  // Private constructor prevents instantiation
  const SchemaHttpPostalAddress._();

  /// IRI term for the PostalAddress class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated(
    'http://schema.org/PostalAddress',
  );

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

  /// addressCountry [Expects: http://schema.org/Country, http://schema.org/Text]
  ///
  /// The country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example "US". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or a full country name such as "Singapore" can also be used.
  ///
  /// Can be used on: http://schema.org/DefinedRegion, http://schema.org/GeoCoordinates, http://schema.org/GeoShape, http://schema.org/PostalAddress
  ///
  static const addressCountry = IriTerm.prevalidated(
    'http://schema.org/addressCountry',
  );

  /// addressLocality [Expects: http://schema.org/Text]
  ///
  /// The locality in which the street address is, and which is in the region. For example, Mountain View.
  ///
  /// Can be used on: http://schema.org/PostalAddress
  ///
  static const addressLocality = IriTerm.prevalidated(
    'http://schema.org/addressLocality',
  );

  /// addressRegion [Expects: http://schema.org/Text]
  ///
  /// The region in which the locality is, and which is in the country. For example, California or another appropriate first-level [Administrative division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country).
  ///
  /// Can be used on: http://schema.org/DefinedRegion, http://schema.org/PostalAddress
  ///
  static const addressRegion = IriTerm.prevalidated(
    'http://schema.org/addressRegion',
  );

  /// availableLanguage [Expects: http://schema.org/Language, http://schema.org/Text]
  ///
  /// A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also {[inLanguage]}.
  ///
  /// Can be used on: http://schema.org/ContactPoint, http://schema.org/Course, http://schema.org/LodgingBusiness, http://schema.org/ServiceChannel, http://schema.org/TouristAttraction
  ///
  static const availableLanguage = IriTerm.prevalidated(
    'http://schema.org/availableLanguage',
  );

  /// contactOption [Expects: http://schema.org/ContactPointOption]
  ///
  /// An option available on this contact point (e.g. a toll-free number or support for hearing-impaired callers).
  ///
  /// Can be used on: http://schema.org/ContactPoint
  ///
  static const contactOption = IriTerm.prevalidated(
    'http://schema.org/contactOption',
  );

  /// contactType [Expects: http://schema.org/Text]
  ///
  /// A person or organization can have different contact points, for different purposes. For example, a sales contact point, a PR contact point and so on. This property is used to specify the kind of contact point.
  ///
  /// Can be used on: http://schema.org/ContactPoint
  ///
  static const contactType = IriTerm.prevalidated(
    'http://schema.org/contactType',
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

  /// email [Expects: http://schema.org/Text]
  ///
  /// Email address.
  ///
  /// Can be used on: http://schema.org/ContactPoint, http://schema.org/Organization, http://schema.org/Person
  ///
  static const email = IriTerm.prevalidated('http://schema.org/email');

  /// extendedAddress [Expects: http://schema.org/Text]
  ///
  /// An address extension such as an apartment number, C/O or alternative name.
  ///
  /// Can be used on: http://schema.org/PostalAddress
  ///
  static const extendedAddress = IriTerm.prevalidated(
    'http://schema.org/extendedAddress',
  );

  /// faxNumber [Expects: http://schema.org/Text]
  ///
  /// The fax number.
  ///
  /// Can be used on: http://schema.org/ContactPoint, http://schema.org/Organization, http://schema.org/Person, http://schema.org/Place
  ///
  static const faxNumber = IriTerm.prevalidated('http://schema.org/faxNumber');

  /// hoursAvailable [Expects: http://schema.org/OpeningHoursSpecification]
  ///
  /// The hours during which this service or contact is available.
  ///
  /// Can be used on: http://schema.org/ContactPoint, http://schema.org/LocationFeatureSpecification, http://schema.org/Service
  ///
  static const hoursAvailable = IriTerm.prevalidated(
    'http://schema.org/hoursAvailable',
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

  /// name [Expects: http://schema.org/Text]
  ///
  /// The name of the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const name = IriTerm.prevalidated('http://schema.org/name');

  /// postOfficeBoxNumber [Expects: http://schema.org/Text]
  ///
  /// The post office box number for PO box addresses.
  ///
  /// Can be used on: http://schema.org/PostalAddress
  ///
  static const postOfficeBoxNumber = IriTerm.prevalidated(
    'http://schema.org/postOfficeBoxNumber',
  );

  /// postalCode [Expects: http://schema.org/Text]
  ///
  /// The postal code. For example, 94043.
  ///
  /// Can be used on: http://schema.org/DefinedRegion, http://schema.org/GeoCoordinates, http://schema.org/GeoShape, http://schema.org/PostalAddress
  ///
  static const postalCode = IriTerm.prevalidated(
    'http://schema.org/postalCode',
  );

  /// potentialAction [Expects: http://schema.org/Action]
  ///
  /// Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const potentialAction = IriTerm.prevalidated(
    'http://schema.org/potentialAction',
  );

  /// productSupported [Expects: http://schema.org/Product, http://schema.org/Text]
  ///
  /// The product or service this support contact point is related to (such as product support for a particular product line). This can be a specific product or product line (e.g. "iPhone") or a general category of products or services (e.g. "smartphones").
  ///
  /// Can be used on: http://schema.org/ContactPoint
  ///
  static const productSupported = IriTerm.prevalidated(
    'http://schema.org/productSupported',
  );

  /// sameAs [Expects: http://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('http://schema.org/sameAs');

  /// streetAddress [Expects: http://schema.org/Text]
  ///
  /// The street address. For example, 1600 Amphitheatre Pkwy.
  ///
  /// Can be used on: http://schema.org/PostalAddress
  ///
  static const streetAddress = IriTerm.prevalidated(
    'http://schema.org/streetAddress',
  );

  /// telephone [Expects: http://schema.org/Text]
  ///
  /// The telephone number.
  ///
  /// Can be used on: http://schema.org/ContactPoint, http://schema.org/Organization, http://schema.org/Person, http://schema.org/Place
  ///
  static const telephone = IriTerm.prevalidated('http://schema.org/telephone');

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

  /// serviceArea [Expects: http://schema.org/AdministrativeArea, http://schema.org/GeoShape, http://schema.org/Place]
  ///
  /// The geographic area where the service is provided.
  ///
  /// Can be used on: http://schema.org/ContactPoint, http://schema.org/Organization, http://schema.org/Service
  ///
  static const serviceArea = IriTerm.prevalidated(
    'http://schema.org/serviceArea',
  );

  /// subjectOf [Expects: http://schema.org/CreativeWork, http://schema.org/Event]
  ///
  /// A CreativeWork or Event about this Thing.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const subjectOf = IriTerm.prevalidated('http://schema.org/subjectOf');

  /// areaServed [Expects: http://schema.org/AdministrativeArea, http://schema.org/GeoShape, http://schema.org/Place, http://schema.org/Text]
  ///
  /// The geographic area where a service or offered item is provided.
  ///
  /// Can be used on: http://schema.org/ContactPoint, http://schema.org/DeliveryChargeSpecification, http://schema.org/Demand, http://schema.org/FinancialIncentive, http://schema.org/Offer, http://schema.org/Organization, http://schema.org/Service
  ///
  static const areaServed = IriTerm.prevalidated(
    'http://schema.org/areaServed',
  );

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
