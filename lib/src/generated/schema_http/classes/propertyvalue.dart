// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// PropertyValue class from SchemaHttp vocabulary
///
/// A property-value pair, e.g. representing a feature of a product or place. Use the 'name' property for the name of the property. If there is an additional human-readable version of the value, put that into the 'description' property.\n\n Always use specific schema.org properties when a) they exist and b) you can populate them. Using PropertyValue as a substitute will typically not trigger the same effect as using the original, specific property.
///
///
/// Inherits from:
/// - Intangible (http://schema.org/Intangible)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - StructuredValue (http://schema.org/StructuredValue)
/// - Thing (http://schema.org/Thing)
///
/// This class provides access to all properties that can be used with PropertyValue.
/// [Class Reference](http://schema.org/PropertyValue)
///
/// [Vocabulary Reference](http://schema.org/)
class SchemaHttpPropertyValue {
  // Private constructor prevents instantiation
  const SchemaHttpPropertyValue._();

  /// IRI term for the PropertyValue class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated(
    'http://schema.org/PropertyValue',
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

  /// maxValue [Expects: http://schema.org/Number]
  ///
  /// The upper value of some characteristic or property.
  ///
  /// Can be used on: http://schema.org/MonetaryAmount, http://schema.org/PropertyValue, http://schema.org/PropertyValueSpecification, http://schema.org/QuantitativeValue
  ///
  static const maxValue = IriTerm.prevalidated('http://schema.org/maxValue');

  /// measurementMethod [Expects: http://schema.org/DefinedTerm, http://schema.org/MeasurementMethodEnum, http://schema.org/Text, http://schema.org/URL]
  ///
  /// A subproperty of {[measurementTechnique]} that can be used for specifying specific methods, in particular via {[MeasurementMethodEnum]}.
  ///
  /// Can be used on: http://schema.org/DataCatalog, http://schema.org/DataDownload, http://schema.org/Dataset, http://schema.org/Observation, http://schema.org/PropertyValue, http://schema.org/StatisticalVariable
  ///
  static const measurementMethod = IriTerm.prevalidated(
    'http://schema.org/measurementMethod',
  );

  /// minValue [Expects: http://schema.org/Number]
  ///
  /// The lower value of some characteristic or property.
  ///
  /// Can be used on: http://schema.org/MonetaryAmount, http://schema.org/PropertyValue, http://schema.org/PropertyValueSpecification, http://schema.org/QuantitativeValue
  ///
  static const minValue = IriTerm.prevalidated('http://schema.org/minValue');

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

  /// propertyID [Expects: http://schema.org/Text, http://schema.org/URL]
  ///
  /// A commonly used identifier for the characteristic represented by the property, e.g. a manufacturer or a standard code for a property. propertyID can be
  /// (1) a prefixed string, mainly meant to be used with standards for product properties; (2) a site-specific, non-prefixed string (e.g. the primary key of the property or the vendor-specific ID of the property), or (3)
  /// a URL indicating the type of the property, either pointing to an external vocabulary, or a Web resource that describes the property (e.g. a glossary entry).
  /// Standards bodies should promote a standard prefix for the identifiers of properties from their standards.
  ///
  /// Can be used on: http://schema.org/PropertyValue
  ///
  static const propertyID = IriTerm.prevalidated(
    'http://schema.org/propertyID',
  );

  /// sameAs [Expects: http://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('http://schema.org/sameAs');

  /// unitCode [Expects: http://schema.org/Text, http://schema.org/URL]
  ///
  /// The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon.
  ///
  /// Can be used on: http://schema.org/PropertyValue, http://schema.org/QuantitativeValue, http://schema.org/TypeAndQuantityNode, http://schema.org/UnitPriceSpecification
  ///
  static const unitCode = IriTerm.prevalidated('http://schema.org/unitCode');

  /// unitText [Expects: http://schema.org/Text]
  ///
  /// A string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for
  /// <a href='unitCode'>unitCode</a>.
  ///
  /// Can be used on: http://schema.org/PropertyValue, http://schema.org/QuantitativeValue, http://schema.org/TypeAndQuantityNode, http://schema.org/UnitPriceSpecification
  ///
  static const unitText = IriTerm.prevalidated('http://schema.org/unitText');

  /// url [Expects: http://schema.org/URL]
  ///
  /// URL of the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const url = IriTerm.prevalidated('http://schema.org/url');

  /// value [Expects: http://schema.org/Boolean, http://schema.org/Number, http://schema.org/StructuredValue, http://schema.org/Text]
  ///
  /// The value of a {[QuantitativeValue]} (including {[Observation]}) or property value node.\n\n* For {[QuantitativeValue]} and {[MonetaryAmount]}, the recommended type for values is 'Number'.\n* For {[PropertyValue]}, it can be 'Text', 'Number', 'Boolean', or 'StructuredValue'.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.
  ///
  /// Can be used on: http://schema.org/MonetaryAmount, http://schema.org/PropertyValue, http://schema.org/QuantitativeValue
  ///
  static const value = IriTerm.prevalidated('http://schema.org/value');

  /// valueReference [Expects: http://schema.org/DefinedTerm, http://schema.org/Enumeration, http://schema.org/MeasurementTypeEnumeration, http://schema.org/PropertyValue, http://schema.org/QualitativeValue, http://schema.org/QuantitativeValue, http://schema.org/StructuredValue, http://schema.org/Text]
  ///
  /// A secondary value that provides additional information on the original value, e.g. a reference temperature or a type of measurement.
  ///
  /// Can be used on: http://schema.org/PropertyValue, http://schema.org/QualitativeValue, http://schema.org/QuantitativeValue
  ///
  static const valueReference = IriTerm.prevalidated(
    'http://schema.org/valueReference',
  );

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

  /// measurementTechnique [Expects: http://schema.org/DefinedTerm, http://schema.org/MeasurementMethodEnum, http://schema.org/Text, http://schema.org/URL]
  ///
  /// A technique, method or technology used in an {[Observation]}, {[StatisticalVariable]} or {[Dataset]} (or {[DataDownload]}, {[DataCatalog]}), corresponding to the method used for measuring the corresponding variable(s) (for datasets, described using {[variableMeasured]}; for {[Observation]}, a {[StatisticalVariable]}). Often but not necessarily each {[variableMeasured]} will have an explicit representation as (or mapping to) an property such as those defined in Schema.org, or other RDF vocabularies and "knowledge graphs". In that case the subproperty of {[variableMeasured]} called {[measuredProperty]} is applicable.
  ///
  /// The {[measurementTechnique]} property helps when extra clarification is needed about how a {[measuredProperty]} was measured. This is oriented towards scientific and scholarly dataset publication but may have broader applicability; it is not intended as a full representation of measurement, but can often serve as a high level summary for dataset discovery.
  ///
  /// For example, if {[variableMeasured]} is: molecule concentration, {[measurementTechnique]} could be: "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or "immunofluorescence". If the {[variableMeasured]} is "depression rating", the {[measurementTechnique]} could be "Zung Scale" or "HAM-D" or "Beck Depression Inventory".
  ///
  /// If there are several {[variableMeasured]} properties recorded for some given data object, use a {[PropertyValue]} for each {[variableMeasured]} and attach the corresponding {[measurementTechnique]}. The value can also be from an enumeration, organized as a {[MeasurementMetholdEnumeration]}.
  ///
  /// Can be used on: http://schema.org/DataCatalog, http://schema.org/DataDownload, http://schema.org/Dataset, http://schema.org/Observation, http://schema.org/PropertyValue, http://schema.org/StatisticalVariable
  ///
  static const measurementTechnique = IriTerm.prevalidated(
    'http://schema.org/measurementTechnique',
  );

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
