// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// JobPosting class from Schema vocabulary
///
/// A listing that describes a job opening in a certain organization.
///
/// Inherits from:
/// - Intangible (https://schema.org/Intangible)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - Thing (https://schema.org/Thing)
///
/// This class provides access to all properties that can be used with JobPosting.
/// [Class Reference](https://schema.org/JobPosting)
///
/// [Vocabulary Reference](https://schema.org/)
class SchemaJobPosting {
  // Private constructor prevents instantiation
  const SchemaJobPosting._();

  /// IRI term for the JobPosting class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated('https://schema.org/JobPosting');

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

  /// applicantLocationRequirements [Expects: https://schema.org/AdministrativeArea]
  ///
  /// The location(s) applicants can apply from. This is usually used for telecommuting jobs where the applicant does not need to be in a physical office. Note: This should not be used for citizenship or work visa requirements.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const applicantLocationRequirements = IriTerm.prevalidated(
    'https://schema.org/applicantLocationRequirements',
  );

  /// applicationContact [Expects: https://schema.org/ContactPoint]
  ///
  /// Contact details for further information relevant to this job posting.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const applicationContact = IriTerm.prevalidated(
    'https://schema.org/applicationContact',
  );

  /// baseSalary [Expects: https://schema.org/MonetaryAmount, https://schema.org/Number, https://schema.org/PriceSpecification]
  ///
  /// The base salary of the job or of an employee in an EmployeeRole.
  ///
  /// Can be used on: https://schema.org/EmployeeRole, https://schema.org/JobPosting
  ///
  static const baseSalary = IriTerm.prevalidated(
    'https://schema.org/baseSalary',
  );

  /// benefits [Expects: https://schema.org/Text]
  ///
  /// Description of benefits associated with the job.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const benefits = IriTerm.prevalidated('https://schema.org/benefits');

  /// datePosted [Expects: https://schema.org/Date, https://schema.org/DateTime]
  ///
  /// Publication date of an online listing.
  ///
  /// Can be used on: https://schema.org/CDCPMDRecord, https://schema.org/JobPosting, https://schema.org/RealEstateListing, https://schema.org/SpecialAnnouncement
  ///
  static const datePosted = IriTerm.prevalidated(
    'https://schema.org/datePosted',
  );

  /// directApply [Expects: https://schema.org/Boolean]
  ///
  /// Indicates whether an {[url]} that is associated with a {[JobPosting]} enables direct application for the job, via the posting website. A job posting is considered to have directApply of {[True]} if an application process for the specified job can be directly initiated via the url(s) given (noting that e.g. multiple internet domains might nevertheless be involved at an implementation level). A value of {[False]} is appropriate if there is no clear path to applying directly online for the specified job, navigating directly from the JobPosting url(s) supplied.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const directApply = IriTerm.prevalidated(
    'https://schema.org/directApply',
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

  /// educationRequirements [Expects: https://schema.org/EducationalOccupationalCredential, https://schema.org/Text]
  ///
  /// Educational background needed for the position or Occupation.
  ///
  /// Can be used on: https://schema.org/JobPosting, https://schema.org/Occupation
  ///
  static const educationRequirements = IriTerm.prevalidated(
    'https://schema.org/educationRequirements',
  );

  /// eligibilityToWorkRequirement [Expects: https://schema.org/Text]
  ///
  /// The legal requirements such as citizenship, visa and other documentation required for an applicant to this job.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const eligibilityToWorkRequirement = IriTerm.prevalidated(
    'https://schema.org/eligibilityToWorkRequirement',
  );

  /// employerOverview [Expects: https://schema.org/Text]
  ///
  /// A description of the employer, career opportunities and work environment for this position.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const employerOverview = IriTerm.prevalidated(
    'https://schema.org/employerOverview',
  );

  /// employmentType [Expects: https://schema.org/Text]
  ///
  /// Type of employment (e.g. full-time, part-time, contract, temporary, seasonal, internship).
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const employmentType = IriTerm.prevalidated(
    'https://schema.org/employmentType',
  );

  /// employmentUnit [Expects: https://schema.org/Organization]
  ///
  /// Indicates the department, unit and/or facility where the employee reports and/or in which the job is to be performed.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const employmentUnit = IriTerm.prevalidated(
    'https://schema.org/employmentUnit',
  );

  /// estimatedSalary [Expects: https://schema.org/MonetaryAmount, https://schema.org/MonetaryAmountDistribution, https://schema.org/Number]
  ///
  /// An estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value.
  ///
  /// Can be used on: https://schema.org/JobPosting, https://schema.org/Occupation
  ///
  static const estimatedSalary = IriTerm.prevalidated(
    'https://schema.org/estimatedSalary',
  );

  /// experienceInPlaceOfEducation [Expects: https://schema.org/Boolean]
  ///
  /// Indicates whether a {[JobPosting]} will accept experience (as indicated by {[OccupationalExperienceRequirements]}) in place of its formal educational qualifications (as indicated by {[educationRequirements]}). If true, indicates that satisfying one of these requirements is sufficient.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const experienceInPlaceOfEducation = IriTerm.prevalidated(
    'https://schema.org/experienceInPlaceOfEducation',
  );

  /// experienceRequirements [Expects: https://schema.org/OccupationalExperienceRequirements, https://schema.org/Text]
  ///
  /// Description of skills and experience needed for the position or Occupation.
  ///
  /// Can be used on: https://schema.org/JobPosting, https://schema.org/Occupation
  ///
  static const experienceRequirements = IriTerm.prevalidated(
    'https://schema.org/experienceRequirements',
  );

  /// hiringOrganization [Expects: https://schema.org/Organization, https://schema.org/Person]
  ///
  /// Organization or Person offering the job position.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const hiringOrganization = IriTerm.prevalidated(
    'https://schema.org/hiringOrganization',
  );

  /// incentives [Expects: https://schema.org/Text]
  ///
  /// Description of bonus and commission compensation aspects of the job.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const incentives = IriTerm.prevalidated(
    'https://schema.org/incentives',
  );

  /// industry [Expects: https://schema.org/DefinedTerm, https://schema.org/Text]
  ///
  /// The industry associated with the job position.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const industry = IriTerm.prevalidated('https://schema.org/industry');

  /// interactionCount
  ///
  /// This property is deprecated, alongside the UserInteraction types on which it depended.
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const interactionCount = IriTerm.prevalidated(
    'https://schema.org/interactionCount',
  );

  /// jobImmediateStart [Expects: https://schema.org/Boolean]
  ///
  /// An indicator as to whether a position is available for an immediate start.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const jobImmediateStart = IriTerm.prevalidated(
    'https://schema.org/jobImmediateStart',
  );

  /// jobLocation [Expects: https://schema.org/Place]
  ///
  /// A (typically single) geographic location associated with the job position.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const jobLocation = IriTerm.prevalidated(
    'https://schema.org/jobLocation',
  );

  /// jobLocationType [Expects: https://schema.org/Text]
  ///
  /// A description of the job location (e.g. TELECOMMUTE for telecommute jobs).
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const jobLocationType = IriTerm.prevalidated(
    'https://schema.org/jobLocationType',
  );

  /// jobStartDate [Expects: https://schema.org/Date, https://schema.org/Text]
  ///
  /// The date on which a successful applicant for this job would be expected to start work. Choose a specific date in the future or use the jobImmediateStart property to indicate the position is to be filled as soon as possible.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const jobStartDate = IriTerm.prevalidated(
    'https://schema.org/jobStartDate',
  );

  /// name [Expects: https://schema.org/Text]
  ///
  /// The name of the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const name = IriTerm.prevalidated('https://schema.org/name');

  /// occupationalCategory [Expects: https://schema.org/CategoryCode, https://schema.org/Text]
  ///
  /// A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\n
  /// Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC.
  ///
  /// Can be used on: https://schema.org/EducationalOccupationalProgram, https://schema.org/JobPosting, https://schema.org/Occupation, https://schema.org/Physician, https://schema.org/WorkBasedProgram
  ///
  static const occupationalCategory = IriTerm.prevalidated(
    'https://schema.org/occupationalCategory',
  );

  /// physicalRequirement [Expects: https://schema.org/DefinedTerm, https://schema.org/Text, https://schema.org/URL]
  ///
  /// A description of the types of physical activity associated with the job. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const physicalRequirement = IriTerm.prevalidated(
    'https://schema.org/physicalRequirement',
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

  /// qualifications [Expects: https://schema.org/EducationalOccupationalCredential, https://schema.org/Text]
  ///
  /// Specific qualifications required for this role or Occupation.
  ///
  /// Can be used on: https://schema.org/JobPosting, https://schema.org/Occupation
  ///
  static const qualifications = IriTerm.prevalidated(
    'https://schema.org/qualifications',
  );

  /// relevantOccupation [Expects: https://schema.org/Occupation]
  ///
  /// The Occupation for the JobPosting.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const relevantOccupation = IriTerm.prevalidated(
    'https://schema.org/relevantOccupation',
  );

  /// responsibilities [Expects: https://schema.org/Text]
  ///
  /// Responsibilities associated with this role or Occupation.
  ///
  /// Can be used on: https://schema.org/JobPosting, https://schema.org/Occupation
  ///
  static const responsibilities = IriTerm.prevalidated(
    'https://schema.org/responsibilities',
  );

  /// salaryCurrency [Expects: https://schema.org/Text]
  ///
  /// The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee.
  ///
  /// Can be used on: https://schema.org/EmployeeRole, https://schema.org/JobPosting
  ///
  static const salaryCurrency = IriTerm.prevalidated(
    'https://schema.org/salaryCurrency',
  );

  /// sameAs [Expects: https://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('https://schema.org/sameAs');

  /// securityClearanceRequirement [Expects: https://schema.org/Text, https://schema.org/URL]
  ///
  /// A description of any security clearance requirements of the job.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const securityClearanceRequirement = IriTerm.prevalidated(
    'https://schema.org/securityClearanceRequirement',
  );

  /// sensoryRequirement [Expects: https://schema.org/DefinedTerm, https://schema.org/Text, https://schema.org/URL]
  ///
  /// A description of any sensory requirements and levels necessary to function on the job, including hearing and vision. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const sensoryRequirement = IriTerm.prevalidated(
    'https://schema.org/sensoryRequirement',
  );

  /// skills [Expects: https://schema.org/DefinedTerm, https://schema.org/Text]
  ///
  /// A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
  ///
  /// Can be used on: https://schema.org/JobPosting, https://schema.org/Occupation, https://schema.org/Organization, https://schema.org/Person
  ///
  static const skills = IriTerm.prevalidated('https://schema.org/skills');

  /// specialCommitments [Expects: https://schema.org/Text]
  ///
  /// Any special commitments associated with this job posting. Valid entries include VeteranCommit, MilitarySpouseCommit, etc.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const specialCommitments = IriTerm.prevalidated(
    'https://schema.org/specialCommitments',
  );

  /// title [Expects: https://schema.org/Text]
  ///
  /// The title of the job.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const title = IriTerm.prevalidated('https://schema.org/title');

  /// totalJobOpenings [Expects: https://schema.org/Integer]
  ///
  /// The number of positions open for this job posting. Use a positive integer. Do not use if the number of positions is unclear or not known.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const totalJobOpenings = IriTerm.prevalidated(
    'https://schema.org/totalJobOpenings',
  );

  /// url [Expects: https://schema.org/URL]
  ///
  /// URL of the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const url = IriTerm.prevalidated('https://schema.org/url');

  /// validThrough [Expects: https://schema.org/Date, https://schema.org/DateTime]
  ///
  /// The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/FinancialIncentive, https://schema.org/JobPosting, https://schema.org/LocationFeatureSpecification, https://schema.org/MonetaryAmount, https://schema.org/Offer, https://schema.org/OpeningHoursSpecification, https://schema.org/PriceSpecification
  ///
  static const validThrough = IriTerm.prevalidated(
    'https://schema.org/validThrough',
  );

  /// workHours [Expects: https://schema.org/Text]
  ///
  /// The typical working hours for this job (e.g. 1st shift, night shift, 8am-5pm).
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const workHours = IriTerm.prevalidated('https://schema.org/workHours');

  /// alternateName [Expects: https://schema.org/Text]
  ///
  /// An alias for the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const alternateName = IriTerm.prevalidated(
    'https://schema.org/alternateName',
  );

  /// incentiveCompensation [Expects: https://schema.org/Text]
  ///
  /// Description of bonus and commission compensation aspects of the job.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const incentiveCompensation = IriTerm.prevalidated(
    'https://schema.org/incentiveCompensation',
  );

  /// jobBenefits [Expects: https://schema.org/Text]
  ///
  /// Description of benefits associated with the job.
  ///
  /// Can be used on: https://schema.org/JobPosting
  ///
  static const jobBenefits = IriTerm.prevalidated(
    'https://schema.org/jobBenefits',
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
