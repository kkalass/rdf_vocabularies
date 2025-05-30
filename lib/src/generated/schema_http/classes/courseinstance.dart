// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// CourseInstance class from SchemaHttp vocabulary
///
/// An instance of a {[Course]} which is distinct from other instances because it is offered at a different time or location or through different media or modes of study or to a specific section of students.
///
/// Inherits from:
/// - Event (http://schema.org/Event)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - Thing (http://schema.org/Thing)
///
/// This class provides access to all properties that can be used with CourseInstance.
/// [Class Reference](http://schema.org/CourseInstance)
///
/// [Vocabulary Reference](http://schema.org/)
class SchemaHttpCourseInstance {
  // Private constructor prevents instantiation
  const SchemaHttpCourseInstance._();

  /// IRI term for the CourseInstance class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated(
    'http://schema.org/CourseInstance',
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

  /// aggregateRating [Expects: http://schema.org/AggregateRating]
  ///
  /// The overall rating, based on a collection of reviews or ratings, of the item.
  ///
  /// Can be used on: http://schema.org/Brand, http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/Offer, http://schema.org/Organization, http://schema.org/Place, http://schema.org/Product, http://schema.org/Service
  ///
  static const aggregateRating = IriTerm.prevalidated(
    'http://schema.org/aggregateRating',
  );

  /// attendees [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// A person attending the event.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const attendees = IriTerm.prevalidated('http://schema.org/attendees');

  /// composer [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// The person or organization who wrote a composition, or who is the composer of a work performed at some event.
  ///
  /// Can be used on: http://schema.org/Event, http://schema.org/MusicComposition
  ///
  static const composer = IriTerm.prevalidated('http://schema.org/composer');

  /// contributor [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// A secondary contributor to the CreativeWork or Event.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Event
  ///
  static const contributor = IriTerm.prevalidated(
    'http://schema.org/contributor',
  );

  /// courseMode [Expects: http://schema.org/Text, http://schema.org/URL]
  ///
  /// The medium or means of delivery of the course instance or the mode of study, either as a text label (e.g. "online", "onsite" or "blended"; "synchronous" or "asynchronous"; "full-time" or "part-time") or as a URL reference to a term from a controlled vocabulary (e.g. https://ceds.ed.gov/element/001311#Asynchronous).
  ///
  /// Can be used on: http://schema.org/CourseInstance
  ///
  static const courseMode = IriTerm.prevalidated(
    'http://schema.org/courseMode',
  );

  /// courseSchedule [Expects: http://schema.org/Schedule]
  ///
  /// Represents the length and pace of a course, expressed as a {[Schedule]}.
  ///
  /// Can be used on: http://schema.org/CourseInstance
  ///
  static const courseSchedule = IriTerm.prevalidated(
    'http://schema.org/courseSchedule',
  );

  /// courseWorkload [Expects: http://schema.org/Text]
  ///
  /// The amount of work expected of students taking the course, often provided as a figure per week or per month, and may be broken down by type. For example, "2 hours of lectures, 1 hour of lab work and 3 hours of independent study per week".
  ///
  /// Can be used on: http://schema.org/CourseInstance
  ///
  static const courseWorkload = IriTerm.prevalidated(
    'http://schema.org/courseWorkload',
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

  /// doorTime [Expects: http://schema.org/DateTime, http://schema.org/Time]
  ///
  /// The time admission will commence.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const doorTime = IriTerm.prevalidated('http://schema.org/doorTime');

  /// endDate [Expects: http://schema.org/Date, http://schema.org/DateTime]
  ///
  /// The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
  ///
  /// Can be used on: http://schema.org/CreativeWorkSeason, http://schema.org/CreativeWorkSeries, http://schema.org/DatedMoneySpecification, http://schema.org/EducationalOccupationalProgram, http://schema.org/Event, http://schema.org/MerchantReturnPolicySeasonalOverride, http://schema.org/Role, http://schema.org/Schedule
  ///
  static const endDate = IriTerm.prevalidated('http://schema.org/endDate');

  /// eventAttendanceMode [Expects: http://schema.org/EventAttendanceModeEnumeration]
  ///
  /// The eventAttendanceMode of an event indicates whether it occurs online, offline, or a mix.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const eventAttendanceMode = IriTerm.prevalidated(
    'http://schema.org/eventAttendanceMode',
  );

  /// eventSchedule [Expects: http://schema.org/Schedule]
  ///
  /// Associates an {[Event]} with a {[Schedule]}. There are circumstances where it is preferable to share a schedule for a series of
  /// repeating events rather than data on the individual events themselves. For example, a website or application might prefer to publish a schedule for a weekly
  /// gym class rather than provide data on every event. A schedule could be processed by applications to add forthcoming events to a calendar. An {[Event]} that
  /// is associated with a {[Schedule]} using this property should not have {[startDate]} or {[endDate]} properties. These are instead defined within the associated
  /// {[Schedule]}, this avoids any ambiguity for clients using the data. The property might have repeated values to specify different schedules, e.g. for different months
  /// or seasons.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const eventSchedule = IriTerm.prevalidated(
    'http://schema.org/eventSchedule',
  );

  /// eventStatus [Expects: http://schema.org/EventStatusType]
  ///
  /// An eventStatus of an event represents its status; particularly useful when an event is cancelled or rescheduled.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const eventStatus = IriTerm.prevalidated(
    'http://schema.org/eventStatus',
  );

  /// funder [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// A person or organization that supports (sponsors) something through some kind of financial contribution.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/Grant, http://schema.org/MonetaryGrant, http://schema.org/Organization, http://schema.org/Person
  ///
  static const funder = IriTerm.prevalidated('http://schema.org/funder');

  /// instructor [Expects: http://schema.org/Person]
  ///
  /// A person assigned to instruct or provide instructional assistance for the {[CourseInstance]}.
  ///
  /// Can be used on: http://schema.org/CourseInstance
  ///
  static const instructor = IriTerm.prevalidated(
    'http://schema.org/instructor',
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

  /// keywords [Expects: http://schema.org/DefinedTerm, http://schema.org/Text, http://schema.org/URL]
  ///
  /// Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/Organization, http://schema.org/Place, http://schema.org/Product
  ///
  static const keywords = IriTerm.prevalidated('http://schema.org/keywords');

  /// maximumAttendeeCapacity [Expects: http://schema.org/Integer]
  ///
  /// The total number of individuals that may attend an event or venue.
  ///
  /// Can be used on: http://schema.org/Event, http://schema.org/Place
  ///
  static const maximumAttendeeCapacity = IriTerm.prevalidated(
    'http://schema.org/maximumAttendeeCapacity',
  );

  /// maximumPhysicalAttendeeCapacity [Expects: http://schema.org/Integer]
  ///
  /// The maximum physical attendee capacity of an {[Event]} whose {[eventAttendanceMode]} is {[OfflineEventAttendanceMode]} (or the offline aspects, in the case of a {[MixedEventAttendanceMode]}).
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const maximumPhysicalAttendeeCapacity = IriTerm.prevalidated(
    'http://schema.org/maximumPhysicalAttendeeCapacity',
  );

  /// maximumVirtualAttendeeCapacity [Expects: http://schema.org/Integer]
  ///
  /// The maximum virtual attendee capacity of an {[Event]} whose {[eventAttendanceMode]} is {[OnlineEventAttendanceMode]} (or the online aspects, in the case of a {[MixedEventAttendanceMode]}).
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const maximumVirtualAttendeeCapacity = IriTerm.prevalidated(
    'http://schema.org/maximumVirtualAttendeeCapacity',
  );

  /// name [Expects: http://schema.org/Text]
  ///
  /// The name of the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const name = IriTerm.prevalidated('http://schema.org/name');

  /// organizer [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// An organizer of an Event.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const organizer = IriTerm.prevalidated('http://schema.org/organizer');

  /// performers [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// The main performer or performers of the event&#x2014;for example, a presenter, musician, or actor.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const performers = IriTerm.prevalidated(
    'http://schema.org/performers',
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

  /// previousStartDate [Expects: http://schema.org/Date]
  ///
  /// Used in conjunction with eventStatus for rescheduled or cancelled events. This property contains the previously scheduled start date. For rescheduled events, the startDate property should be used for the newly scheduled start date. In the (rare) case of an event that has been postponed and rescheduled multiple times, this field may be repeated.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const previousStartDate = IriTerm.prevalidated(
    'http://schema.org/previousStartDate',
  );

  /// remainingAttendeeCapacity [Expects: http://schema.org/Integer]
  ///
  /// The number of attendee places for an event that remain unallocated.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const remainingAttendeeCapacity = IriTerm.prevalidated(
    'http://schema.org/remainingAttendeeCapacity',
  );

  /// sameAs [Expects: http://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('http://schema.org/sameAs');

  /// startDate [Expects: http://schema.org/Date, http://schema.org/DateTime]
  ///
  /// The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
  ///
  /// Can be used on: http://schema.org/CreativeWorkSeason, http://schema.org/CreativeWorkSeries, http://schema.org/DatedMoneySpecification, http://schema.org/EducationalOccupationalProgram, http://schema.org/Event, http://schema.org/MerchantReturnPolicySeasonalOverride, http://schema.org/Role, http://schema.org/Schedule
  ///
  static const startDate = IriTerm.prevalidated('http://schema.org/startDate');

  /// subEvents [Expects: http://schema.org/Event]
  ///
  /// Events that are a part of this event. For example, a conference event includes many presentations, each subEvents of the conference.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const subEvents = IriTerm.prevalidated('http://schema.org/subEvents');

  /// translator [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// Organization or person who adapts a creative work to different languages, regional differences and technical requirements of a target market, or that translates during some event.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Event
  ///
  static const translator = IriTerm.prevalidated(
    'http://schema.org/translator',
  );

  /// typicalAgeRange [Expects: http://schema.org/Text]
  ///
  /// The typical expected age range, e.g. '7-9', '11-'.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Event
  ///
  static const typicalAgeRange = IriTerm.prevalidated(
    'http://schema.org/typicalAgeRange',
  );

  /// url [Expects: http://schema.org/URL]
  ///
  /// URL of the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const url = IriTerm.prevalidated('http://schema.org/url');

  /// workPerformed [Expects: http://schema.org/CreativeWork]
  ///
  /// A work performed in some event, for example a play performed in a TheaterEvent.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const workPerformed = IriTerm.prevalidated(
    'http://schema.org/workPerformed',
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

  /// attendee [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// A person or organization attending the event.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const attendee = IriTerm.prevalidated('http://schema.org/attendee');

  /// audience [Expects: http://schema.org/Audience]
  ///
  /// An intended audience, i.e. a group for whom something was created.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/LodgingBusiness, http://schema.org/PlayAction, http://schema.org/Product, http://schema.org/Service
  ///
  static const audience = IriTerm.prevalidated('http://schema.org/audience');

  /// director [Expects: http://schema.org/Person]
  ///
  /// A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
  ///
  /// Can be used on: http://schema.org/Clip, http://schema.org/CreativeWorkSeason, http://schema.org/Episode, http://schema.org/Event, http://schema.org/Movie, http://schema.org/MovieSeries, http://schema.org/RadioSeries, http://schema.org/TVSeries, http://schema.org/VideoGame, http://schema.org/VideoGameSeries, http://schema.org/VideoObject
  ///
  static const director = IriTerm.prevalidated('http://schema.org/director');

  /// duration [Expects: http://schema.org/Duration, http://schema.org/QuantitativeValue]
  ///
  /// The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
  ///
  /// Can be used on: http://schema.org/Audiobook, http://schema.org/Episode, http://schema.org/Event, http://schema.org/MediaObject, http://schema.org/Movie, http://schema.org/MusicRecording, http://schema.org/MusicRelease, http://schema.org/QuantitativeValueDistribution, http://schema.org/Schedule, http://schema.org/ServicePeriod
  ///
  static const duration = IriTerm.prevalidated('http://schema.org/duration');

  /// funding [Expects: http://schema.org/Grant]
  ///
  /// A {[Grant]} that directly or indirectly provide funding or sponsorship for this item. See also {[ownershipFundingInfo]}.
  ///
  /// Can be used on: http://schema.org/BioChemEntity, http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/MedicalEntity, http://schema.org/Organization, http://schema.org/Person, http://schema.org/Product
  ///
  static const funding = IriTerm.prevalidated('http://schema.org/funding');

  /// inLanguage [Expects: http://schema.org/Language, http://schema.org/Text]
  ///
  /// The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also {[availableLanguage]}.
  ///
  /// Can be used on: http://schema.org/BroadcastService, http://schema.org/CommunicateAction, http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/LinkRole, http://schema.org/PronounceableText, http://schema.org/WriteAction
  ///
  static const inLanguage = IriTerm.prevalidated(
    'http://schema.org/inLanguage',
  );

  /// isAccessibleForFree [Expects: http://schema.org/Boolean]
  ///
  /// A flag to signal that the item, event, or place is accessible for free.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/Place
  ///
  static const isAccessibleForFree = IriTerm.prevalidated(
    'http://schema.org/isAccessibleForFree',
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

  /// performer [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// A performer at the event&#x2014;for example, a presenter, musician, musical group or actor.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const performer = IriTerm.prevalidated('http://schema.org/performer');

  /// recordedIn [Expects: http://schema.org/CreativeWork]
  ///
  /// The CreativeWork that captured all or part of this Event.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const recordedIn = IriTerm.prevalidated(
    'http://schema.org/recordedIn',
  );

  /// review [Expects: http://schema.org/Review]
  ///
  /// A review of the item.
  ///
  /// Can be used on: http://schema.org/Brand, http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/Offer, http://schema.org/Organization, http://schema.org/Place, http://schema.org/Product, http://schema.org/Service
  ///
  static const review = IriTerm.prevalidated('http://schema.org/review');

  /// sponsor [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/Grant, http://schema.org/MedicalStudy, http://schema.org/Organization, http://schema.org/Person
  ///
  static const sponsor = IriTerm.prevalidated('http://schema.org/sponsor');

  /// subjectOf [Expects: http://schema.org/CreativeWork, http://schema.org/Event]
  ///
  /// A CreativeWork or Event about this Thing.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const subjectOf = IriTerm.prevalidated('http://schema.org/subjectOf');

  /// superEvent [Expects: http://schema.org/Event]
  ///
  /// An event that this event is a part of. For example, a collection of individual music performances might each have a music festival as their superEvent.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const superEvent = IriTerm.prevalidated(
    'http://schema.org/superEvent',
  );

  /// about [Expects: http://schema.org/Thing]
  ///
  /// The subject matter of the content.
  ///
  /// Can be used on: http://schema.org/Certification, http://schema.org/CommunicateAction, http://schema.org/CreativeWork, http://schema.org/Event
  ///
  static const about = IriTerm.prevalidated('http://schema.org/about');

  /// actor [Expects: http://schema.org/PerformingGroup, http://schema.org/Person]
  ///
  /// An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
  ///
  /// Can be used on: http://schema.org/Clip, http://schema.org/CreativeWorkSeason, http://schema.org/Episode, http://schema.org/Event, http://schema.org/Movie, http://schema.org/MovieSeries, http://schema.org/PodcastSeries, http://schema.org/RadioSeries, http://schema.org/TVSeries, http://schema.org/VideoGame, http://schema.org/VideoGameSeries, http://schema.org/VideoObject
  ///
  static const actor = IriTerm.prevalidated('http://schema.org/actor');

  /// subEvent [Expects: http://schema.org/Event]
  ///
  /// An Event that is part of this event. For example, a conference event includes many presentations, each of which is a subEvent of the conference.
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const subEvent = IriTerm.prevalidated('http://schema.org/subEvent');

  /// workFeatured [Expects: http://schema.org/CreativeWork]
  ///
  /// A work featured in some event, e.g. exhibited in an ExhibitionEvent.
  /// Specific subproperties are available for workPerformed (e.g. a play), or a workPresented (a Movie at a ScreeningEvent).
  ///
  /// Can be used on: http://schema.org/Event
  ///
  static const workFeatured = IriTerm.prevalidated(
    'http://schema.org/workFeatured',
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

  /// location [Expects: http://schema.org/Place, http://schema.org/PostalAddress, http://schema.org/Text, http://schema.org/VirtualLocation]
  ///
  /// The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
  ///
  /// Can be used on: http://schema.org/Action, http://schema.org/Event, http://schema.org/InteractionCounter, http://schema.org/Organization
  ///
  static const location = IriTerm.prevalidated('http://schema.org/location');

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
