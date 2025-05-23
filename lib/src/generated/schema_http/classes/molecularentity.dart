// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// MolecularEntity class from SchemaHttp vocabulary
///
/// Any constitutionally or isotopically distinct atom, molecule, ion, ion pair, radical, radical ion, complex, conformer etc., identifiable as a separately distinguishable entity.
///
/// Inherits from:
/// - BioChemEntity (http://schema.org/BioChemEntity)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - Thing (http://schema.org/Thing)
///
/// This class provides access to all properties that can be used with MolecularEntity.
/// [Class Reference](http://schema.org/MolecularEntity)
///
/// [Vocabulary Reference](http://schema.org/)
class SchemaHttpMolecularEntity {
  // Private constructor prevents instantiation
  const SchemaHttpMolecularEntity._();

  /// IRI term for the MolecularEntity class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated(
    'http://schema.org/MolecularEntity',
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

  /// associatedDisease [Expects: http://schema.org/MedicalCondition, http://schema.org/PropertyValue, http://schema.org/URL]
  ///
  /// Disease associated to this BioChemEntity. Such disease can be a MedicalCondition or a URL. If you want to add an evidence supporting the association, please use PropertyValue.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const associatedDisease = IriTerm.prevalidated(
    'http://schema.org/associatedDisease',
  );

  /// bioChemInteraction [Expects: http://schema.org/BioChemEntity]
  ///
  /// A BioChemEntity that is known to interact with this item.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const bioChemInteraction = IriTerm.prevalidated(
    'http://schema.org/bioChemInteraction',
  );

  /// bioChemSimilarity [Expects: http://schema.org/BioChemEntity]
  ///
  /// A similar BioChemEntity, e.g., obtained by fingerprint similarity algorithms.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const bioChemSimilarity = IriTerm.prevalidated(
    'http://schema.org/bioChemSimilarity',
  );

  /// biologicalRole [Expects: http://schema.org/DefinedTerm]
  ///
  /// A role played by the BioChemEntity within a biological context.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const biologicalRole = IriTerm.prevalidated(
    'http://schema.org/biologicalRole',
  );

  /// chemicalRole [Expects: http://schema.org/DefinedTerm]
  ///
  /// A role played by the BioChemEntity within a chemical context.
  ///
  /// Can be used on: http://schema.org/ChemicalSubstance, http://schema.org/MolecularEntity
  ///
  static const chemicalRole = IriTerm.prevalidated(
    'http://schema.org/chemicalRole',
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

  /// hasMolecularFunction [Expects: http://schema.org/DefinedTerm, http://schema.org/PropertyValue, http://schema.org/URL]
  ///
  /// Molecular function performed by this BioChemEntity; please use PropertyValue if you want to include any evidence.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const hasMolecularFunction = IriTerm.prevalidated(
    'http://schema.org/hasMolecularFunction',
  );

  /// inChI [Expects: http://schema.org/Text]
  ///
  /// Non-proprietary identifier for molecular entity that can be used in printed and electronic data sources thus enabling easier linking of diverse data compilations.
  ///
  /// Can be used on: http://schema.org/MolecularEntity
  ///
  static const inChI = IriTerm.prevalidated('http://schema.org/inChI');

  /// inChIKey [Expects: http://schema.org/Text]
  ///
  /// InChIKey is a hashed version of the full InChI (using the SHA-256 algorithm).
  ///
  /// Can be used on: http://schema.org/MolecularEntity
  ///
  static const inChIKey = IriTerm.prevalidated('http://schema.org/inChIKey');

  /// interactionCount
  ///
  /// This property is deprecated, alongside the UserInteraction types on which it depended.
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const interactionCount = IriTerm.prevalidated(
    'http://schema.org/interactionCount',
  );

  /// isInvolvedInBiologicalProcess [Expects: http://schema.org/DefinedTerm, http://schema.org/PropertyValue, http://schema.org/URL]
  ///
  /// Biological process this BioChemEntity is involved in; please use PropertyValue if you want to include any evidence.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const isInvolvedInBiologicalProcess = IriTerm.prevalidated(
    'http://schema.org/isInvolvedInBiologicalProcess',
  );

  /// isLocatedInSubcellularLocation [Expects: http://schema.org/DefinedTerm, http://schema.org/PropertyValue, http://schema.org/URL]
  ///
  /// Subcellular location where this BioChemEntity is located; please use PropertyValue if you want to include any evidence.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const isLocatedInSubcellularLocation = IriTerm.prevalidated(
    'http://schema.org/isLocatedInSubcellularLocation',
  );

  /// iupacName [Expects: http://schema.org/Text]
  ///
  /// Systematic method of naming chemical compounds as recommended by the International Union of Pure and Applied Chemistry (IUPAC).
  ///
  /// Can be used on: http://schema.org/MolecularEntity
  ///
  static const iupacName = IriTerm.prevalidated('http://schema.org/iupacName');

  /// molecularFormula [Expects: http://schema.org/Text]
  ///
  /// The empirical formula is the simplest whole number ratio of all the atoms in a molecule.
  ///
  /// Can be used on: http://schema.org/MolecularEntity
  ///
  static const molecularFormula = IriTerm.prevalidated(
    'http://schema.org/molecularFormula',
  );

  /// molecularWeight [Expects: http://schema.org/QuantitativeValue, http://schema.org/Text]
  ///
  /// This is the molecular weight of the entity being described, not of the parent. Units should be included in the form '&lt;Number&gt; &lt;unit&gt;', for example '12 amu' or as '&lt;QuantitativeValue&gt;.
  ///
  /// Can be used on: http://schema.org/MolecularEntity
  ///
  static const molecularWeight = IriTerm.prevalidated(
    'http://schema.org/molecularWeight',
  );

  /// monoisotopicMolecularWeight [Expects: http://schema.org/QuantitativeValue, http://schema.org/Text]
  ///
  /// The monoisotopic mass is the sum of the masses of the atoms in a molecule using the unbound, ground-state, rest mass of the principal (most abundant) isotope for each element instead of the isotopic average mass. Please include the units in the form '&lt;Number&gt; &lt;unit&gt;', for example '770.230488 g/mol' or as '&lt;QuantitativeValue&gt;.
  ///
  /// Can be used on: http://schema.org/MolecularEntity
  ///
  static const monoisotopicMolecularWeight = IriTerm.prevalidated(
    'http://schema.org/monoisotopicMolecularWeight',
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

  /// potentialUse [Expects: http://schema.org/DefinedTerm]
  ///
  /// Intended use of the BioChemEntity by humans.
  ///
  /// Can be used on: http://schema.org/ChemicalSubstance, http://schema.org/MolecularEntity
  ///
  static const potentialUse = IriTerm.prevalidated(
    'http://schema.org/potentialUse',
  );

  /// sameAs [Expects: http://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('http://schema.org/sameAs');

  /// smiles [Expects: http://schema.org/Text]
  ///
  /// A specification in form of a line notation for describing the structure of chemical species using short ASCII strings.  Double bond stereochemistry \ indicators may need to be escaped in the string in formats where the backslash is an escape character.
  ///
  /// Can be used on: http://schema.org/MolecularEntity
  ///
  static const smiles = IriTerm.prevalidated('http://schema.org/smiles');

  /// taxonomicRange [Expects: http://schema.org/DefinedTerm, http://schema.org/Taxon, http://schema.org/Text, http://schema.org/URL]
  ///
  /// The taxonomic grouping of the organism that expresses, encodes, or in some way related to the BioChemEntity.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const taxonomicRange = IriTerm.prevalidated(
    'http://schema.org/taxonomicRange',
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

  /// funding [Expects: http://schema.org/Grant]
  ///
  /// A {[Grant]} that directly or indirectly provide funding or sponsorship for this item. See also {[ownershipFundingInfo]}.
  ///
  /// Can be used on: http://schema.org/BioChemEntity, http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/MedicalEntity, http://schema.org/Organization, http://schema.org/Person, http://schema.org/Product
  ///
  static const funding = IriTerm.prevalidated('http://schema.org/funding');

  /// hasBioChemEntityPart [Expects: http://schema.org/BioChemEntity]
  ///
  /// Indicates a BioChemEntity that (in some sense) has this BioChemEntity as a part.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const hasBioChemEntityPart = IriTerm.prevalidated(
    'http://schema.org/hasBioChemEntityPart',
  );

  /// isEncodedByBioChemEntity [Expects: http://schema.org/Gene]
  ///
  /// Another BioChemEntity encoding by this one.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const isEncodedByBioChemEntity = IriTerm.prevalidated(
    'http://schema.org/isEncodedByBioChemEntity',
  );

  /// isPartOfBioChemEntity [Expects: http://schema.org/BioChemEntity]
  ///
  /// Indicates a BioChemEntity that is (in some sense) a part of this BioChemEntity.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const isPartOfBioChemEntity = IriTerm.prevalidated(
    'http://schema.org/isPartOfBioChemEntity',
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

  /// hasRepresentation [Expects: http://schema.org/PropertyValue, http://schema.org/Text, http://schema.org/URL]
  ///
  /// A common representation such as a protein sequence or chemical structure for this entity. For images use schema.org/image.
  ///
  /// Can be used on: http://schema.org/BioChemEntity
  ///
  static const hasRepresentation = IriTerm.prevalidated(
    'http://schema.org/hasRepresentation',
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
