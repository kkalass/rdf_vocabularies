// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// ShippingRateSettings class from Schema vocabulary
///
/// A ShippingRateSettings represents re-usable pieces of shipping information. It is designed for publication on an URL that may be referenced via the {[shippingSettingsLink]} property of an {[OfferShippingDetails]}. Several occurrences can be published, distinguished and matched (i.e. identified/referenced) by their different values for {[shippingLabel]}.
///
/// Inherits from:
/// - Intangible (https://schema.org/Intangible)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - StructuredValue (https://schema.org/StructuredValue)
/// - Thing (https://schema.org/Thing)
///
/// This class provides access to all properties that can be used with ShippingRateSettings.
/// [Class Reference](https://schema.org/ShippingRateSettings)
///
/// [Vocabulary Reference](https://schema.org/)
class SchemaShippingRateSettings {
  // Private constructor prevents instantiation
  const SchemaShippingRateSettings._();

  /// IRI term for the ShippingRateSettings class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated(
    'https://schema.org/ShippingRateSettings',
  );

  /// additionalType [Expects: https://schema.org/Text, https://schema.org/URL]
  ///
  /// An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the
  /// use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href="https://schema.org/docs/styleguide.html">style guide</a>.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const additionalType = IriTerm.prevalidated(
    'https://schema.org/additionalType',
  );

  /// disambiguatingDescription [Expects: https://schema.org/Text]
  ///
  /// A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const disambiguatingDescription = IriTerm.prevalidated(
    'https://schema.org/disambiguatingDescription',
  );

  /// doesNotShip [Expects: https://schema.org/Boolean]
  ///
  /// Indicates when shipping to a particular {[shippingDestination]} is not available.
  ///
  /// Can be used on: https://schema.org/OfferShippingDetails, https://schema.org/ShippingConditions, https://schema.org/ShippingRateSettings
  ///
  static const doesNotShip = IriTerm.prevalidated(
    'https://schema.org/doesNotShip',
  );

  /// freeShippingThreshold [Expects: https://schema.org/DeliveryChargeSpecification, https://schema.org/MonetaryAmount]
  ///
  /// A monetary value above (or at) which the shipping rate becomes free. Intended to be used via an {[OfferShippingDetails]} with {[shippingSettingsLink]} matching this {[ShippingRateSettings]}.
  ///
  /// Can be used on: https://schema.org/ShippingRateSettings
  ///
  static const freeShippingThreshold = IriTerm.prevalidated(
    'https://schema.org/freeShippingThreshold',
  );

  /// interactionCount
  ///
  /// This property is deprecated, alongside the UserInteraction types on which it depended.
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const interactionCount = IriTerm.prevalidated(
    'https://schema.org/interactionCount',
  );

  /// isUnlabelledFallback [Expects: https://schema.org/Boolean]
  ///
  /// This can be marked 'true' to indicate that some published {[DeliveryTimeSettings]} or {[ShippingRateSettings]} are intended to apply to all {[OfferShippingDetails]} published by the same merchant, when referenced by a {[shippingSettingsLink]} in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for {[DeliveryTimeSettings]}) or shippingLabel (for {[ShippingRateSettings]}), since this property is for use with unlabelled settings.
  ///
  /// Can be used on: https://schema.org/DeliveryTimeSettings, https://schema.org/ShippingRateSettings
  ///
  static const isUnlabelledFallback = IriTerm.prevalidated(
    'https://schema.org/isUnlabelledFallback',
  );

  /// name [Expects: https://schema.org/Text]
  ///
  /// The name of the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const name = IriTerm.prevalidated('https://schema.org/name');

  /// orderPercentage [Expects: https://schema.org/Number]
  ///
  /// Fraction of the value of the order that is charged as shipping cost.
  ///
  /// Can be used on: https://schema.org/ShippingRateSettings
  ///
  static const orderPercentage = IriTerm.prevalidated(
    'https://schema.org/orderPercentage',
  );

  /// potentialAction [Expects: https://schema.org/Action]
  ///
  /// Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const potentialAction = IriTerm.prevalidated(
    'https://schema.org/potentialAction',
  );

  /// sameAs [Expects: https://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('https://schema.org/sameAs');

  /// shippingDestination [Expects: https://schema.org/DefinedRegion]
  ///
  /// indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
  ///
  /// Can be used on: https://schema.org/DeliveryTimeSettings, https://schema.org/OfferShippingDetails, https://schema.org/ShippingConditions, https://schema.org/ShippingRateSettings
  ///
  static const shippingDestination = IriTerm.prevalidated(
    'https://schema.org/shippingDestination',
  );

  /// shippingRate [Expects: https://schema.org/MonetaryAmount, https://schema.org/ShippingRateSettings]
  ///
  /// The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the {[MonetaryAmount]}) are most appropriate.
  ///
  /// Can be used on: https://schema.org/OfferShippingDetails, https://schema.org/ShippingConditions, https://schema.org/ShippingRateSettings
  ///
  static const shippingRate = IriTerm.prevalidated(
    'https://schema.org/shippingRate',
  );

  /// url [Expects: https://schema.org/URL]
  ///
  /// URL of the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const url = IriTerm.prevalidated('https://schema.org/url');

  /// weightPercentage [Expects: https://schema.org/Number]
  ///
  /// Fraction of the weight that is used to compute the shipping price.
  ///
  /// Can be used on: https://schema.org/ShippingRateSettings
  ///
  static const weightPercentage = IriTerm.prevalidated(
    'https://schema.org/weightPercentage',
  );

  /// alternateName [Expects: https://schema.org/Text]
  ///
  /// An alias for the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const alternateName = IriTerm.prevalidated(
    'https://schema.org/alternateName',
  );

  /// mainEntityOfPage [Expects: https://schema.org/CreativeWork, https://schema.org/URL]
  ///
  /// Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const mainEntityOfPage = IriTerm.prevalidated(
    'https://schema.org/mainEntityOfPage',
  );

  /// subjectOf [Expects: https://schema.org/CreativeWork, https://schema.org/Event]
  ///
  /// A CreativeWork or Event about this Thing.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const subjectOf = IriTerm.prevalidated('https://schema.org/subjectOf');

  /// description [Expects: https://schema.org/Text, https://schema.org/TextObject]
  ///
  /// A description of the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const description = IriTerm.prevalidated(
    'https://schema.org/description',
  );

  /// image [Expects: https://schema.org/ImageObject, https://schema.org/URL]
  ///
  /// An image of the item. This can be a {[URL]} or a fully described {[ImageObject]}.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const image = IriTerm.prevalidated('https://schema.org/image');

  /// identifier [Expects: https://schema.org/PropertyValue, https://schema.org/Text, https://schema.org/URL]
  ///
  /// The identifier property represents any kind of identifier for any kind of {[Thing]}, such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.
  ///
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const identifier = IriTerm.prevalidated(
    'https://schema.org/identifier',
  );

  /// source
  ///
  ///
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const source = IriTerm.prevalidated('https://schema.org/source');

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
