// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// PropertyValueSpecification class from SchemaHttp vocabulary
///
/// A Property value specification.
///
/// Inherits from:
/// - Intangible (http://schema.org/Intangible)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - Thing (http://schema.org/Thing)
///
/// This class provides access to all properties that can be used with PropertyValueSpecification.
/// [Class Reference](http://schema.org/PropertyValueSpecification)
///
/// [Vocabulary Reference](http://schema.org/)
class SchemaHttpPropertyValueSpecification {
  // Private constructor prevents instantiation
  const SchemaHttpPropertyValueSpecification._();

  /// IRI term for the PropertyValueSpecification class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated(
    'http://schema.org/PropertyValueSpecification',
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

  /// defaultValue [Expects: http://schema.org/Text, http://schema.org/Thing]
  ///
  /// The default value of the input.  For properties that expect a literal, the default is a literal value, for properties that expect an object, it's an ID reference to one of the current values.
  ///
  /// Can be used on: http://schema.org/PropertyValueSpecification
  ///
  static const defaultValue = IriTerm.prevalidated(
    'http://schema.org/defaultValue',
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

  /// minValue [Expects: http://schema.org/Number]
  ///
  /// The lower value of some characteristic or property.
  ///
  /// Can be used on: http://schema.org/MonetaryAmount, http://schema.org/PropertyValue, http://schema.org/PropertyValueSpecification, http://schema.org/QuantitativeValue
  ///
  static const minValue = IriTerm.prevalidated('http://schema.org/minValue');

  /// multipleValues [Expects: http://schema.org/Boolean]
  ///
  /// Whether multiple values are allowed for the property.  Default is false.
  ///
  /// Can be used on: http://schema.org/PropertyValueSpecification
  ///
  static const multipleValues = IriTerm.prevalidated(
    'http://schema.org/multipleValues',
  );

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

  /// readonlyValue [Expects: http://schema.org/Boolean]
  ///
  /// Whether or not a property is mutable.  Default is false. Specifying this for a property that also has a value makes it act similar to a "hidden" input in an HTML form.
  ///
  /// Can be used on: http://schema.org/PropertyValueSpecification
  ///
  static const readonlyValue = IriTerm.prevalidated(
    'http://schema.org/readonlyValue',
  );

  /// sameAs [Expects: http://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('http://schema.org/sameAs');

  /// stepValue [Expects: http://schema.org/Number]
  ///
  /// The stepValue attribute indicates the granularity that is expected (and required) of the value in a PropertyValueSpecification.
  ///
  /// Can be used on: http://schema.org/PropertyValueSpecification
  ///
  static const stepValue = IriTerm.prevalidated('http://schema.org/stepValue');

  /// url [Expects: http://schema.org/URL]
  ///
  /// URL of the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const url = IriTerm.prevalidated('http://schema.org/url');

  /// valueMaxLength [Expects: http://schema.org/Number]
  ///
  /// Specifies the allowed range for number of characters in a literal value.
  ///
  /// Can be used on: http://schema.org/PropertyValueSpecification
  ///
  static const valueMaxLength = IriTerm.prevalidated(
    'http://schema.org/valueMaxLength',
  );

  /// valueMinLength [Expects: http://schema.org/Number]
  ///
  /// Specifies the minimum allowed range for number of characters in a literal value.
  ///
  /// Can be used on: http://schema.org/PropertyValueSpecification
  ///
  static const valueMinLength = IriTerm.prevalidated(
    'http://schema.org/valueMinLength',
  );

  /// valueName [Expects: http://schema.org/Text]
  ///
  /// Indicates the name of the PropertyValueSpecification to be used in URL templates and form encoding in a manner analogous to HTML's input@name.
  ///
  /// Can be used on: http://schema.org/PropertyValueSpecification
  ///
  static const valueName = IriTerm.prevalidated('http://schema.org/valueName');

  /// valuePattern [Expects: http://schema.org/Text]
  ///
  /// Specifies a regular expression for testing literal values according to the HTML spec.
  ///
  /// Can be used on: http://schema.org/PropertyValueSpecification
  ///
  static const valuePattern = IriTerm.prevalidated(
    'http://schema.org/valuePattern',
  );

  /// valueRequired [Expects: http://schema.org/Boolean]
  ///
  /// Whether the property must be filled in to complete the action.  Default is false.
  ///
  /// Can be used on: http://schema.org/PropertyValueSpecification
  ///
  static const valueRequired = IriTerm.prevalidated(
    'http://schema.org/valueRequired',
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
