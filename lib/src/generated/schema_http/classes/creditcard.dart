// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// CreditCard class from SchemaHttp vocabulary
///
/// A card payment method of a particular brand or name.  Used to mark up a particular payment method and/or the financial product/service that supplies the card account.\n\nCommonly used values:\n\n* http://purl.org/goodrelations/v1#AmericanExpress\n* http://purl.org/goodrelations/v1#DinersClub\n* http://purl.org/goodrelations/v1#Discover\n* http://purl.org/goodrelations/v1#JCB\n* http://purl.org/goodrelations/v1#MasterCard\n* http://purl.org/goodrelations/v1#VISA
///
///
/// Inherits from:
/// - FinancialProduct (http://schema.org/FinancialProduct)
/// - Intangible (http://schema.org/Intangible)
/// - LoanOrCredit (http://schema.org/LoanOrCredit)
/// - PaymentCard (http://schema.org/PaymentCard)
/// - PaymentMethod (http://schema.org/PaymentMethod)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - Service (http://schema.org/Service)
/// - Thing (http://schema.org/Thing)
///
/// This class provides access to all properties that can be used with CreditCard.
/// [Class Reference](http://schema.org/CreditCard)
///
/// [Vocabulary Reference](http://schema.org/)
class SchemaHttpCreditCard {
  // Private constructor prevents instantiation
  const SchemaHttpCreditCard._();

  /// IRI term for the CreditCard class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated('http://schema.org/CreditCard');

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

  /// amount [Expects: http://schema.org/MonetaryAmount, http://schema.org/Number]
  ///
  /// The amount of money.
  ///
  /// Can be used on: http://schema.org/DatedMoneySpecification, http://schema.org/InvestmentOrDeposit, http://schema.org/LoanOrCredit, http://schema.org/MonetaryGrant, http://schema.org/MoneyTransfer
  ///
  static const amount = IriTerm.prevalidated('http://schema.org/amount');

  /// annualPercentageRate [Expects: http://schema.org/Number, http://schema.org/QuantitativeValue]
  ///
  /// The annual rate that is charged for borrowing (or made by investing), expressed as a single percentage number that represents the actual yearly cost of funds over the term of a loan. This includes any fees or additional costs associated with the transaction.
  ///
  /// Can be used on: http://schema.org/FinancialProduct
  ///
  static const annualPercentageRate = IriTerm.prevalidated(
    'http://schema.org/annualPercentageRate',
  );

  /// availableChannel [Expects: http://schema.org/ServiceChannel]
  ///
  /// A means of accessing the service (e.g. a phone bank, a web site, a location, etc.).
  ///
  /// Can be used on: http://schema.org/Service
  ///
  static const availableChannel = IriTerm.prevalidated(
    'http://schema.org/availableChannel',
  );

  /// brand [Expects: http://schema.org/Brand, http://schema.org/Organization]
  ///
  /// The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
  ///
  /// Can be used on: http://schema.org/Organization, http://schema.org/Person, http://schema.org/Product, http://schema.org/Service
  ///
  static const brand = IriTerm.prevalidated('http://schema.org/brand');

  /// cashBack [Expects: http://schema.org/Boolean, http://schema.org/Number]
  ///
  /// A cardholder benefit that pays the cardholder a small percentage of their net expenditures.
  ///
  /// Can be used on: http://schema.org/PaymentCard
  ///
  static const cashBack = IriTerm.prevalidated('http://schema.org/cashBack');

  /// contactlessPayment [Expects: http://schema.org/Boolean]
  ///
  /// A secure method for consumers to purchase products or services via debit, credit or smartcards by using RFID or NFC technology.
  ///
  /// Can be used on: http://schema.org/PaymentCard
  ///
  static const contactlessPayment = IriTerm.prevalidated(
    'http://schema.org/contactlessPayment',
  );

  /// currency [Expects: http://schema.org/Text]
  ///
  /// The currency in which the monetary amount is expressed.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
  ///
  /// Can be used on: http://schema.org/DatedMoneySpecification, http://schema.org/ExchangeRateSpecification, http://schema.org/LoanOrCredit, http://schema.org/MonetaryAmount, http://schema.org/MonetaryAmountDistribution
  ///
  static const currency = IriTerm.prevalidated('http://schema.org/currency');

  /// disambiguatingDescription [Expects: http://schema.org/Text]
  ///
  /// A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const disambiguatingDescription = IriTerm.prevalidated(
    'http://schema.org/disambiguatingDescription',
  );

  /// feesAndCommissionsSpecification [Expects: http://schema.org/Text, http://schema.org/URL]
  ///
  /// Description of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization.
  ///
  /// Can be used on: http://schema.org/FinancialProduct, http://schema.org/FinancialService
  ///
  static const feesAndCommissionsSpecification = IriTerm.prevalidated(
    'http://schema.org/feesAndCommissionsSpecification',
  );

  /// floorLimit [Expects: http://schema.org/MonetaryAmount]
  ///
  /// A floor limit is the amount of money above which credit card transactions must be authorized.
  ///
  /// Can be used on: http://schema.org/PaymentCard
  ///
  static const floorLimit = IriTerm.prevalidated(
    'http://schema.org/floorLimit',
  );

  /// gracePeriod [Expects: http://schema.org/Duration]
  ///
  /// The period of time after any due date that the borrower has to fulfil its obligations before a default (failure to pay) is deemed to have occurred.
  ///
  /// Can be used on: http://schema.org/LoanOrCredit
  ///
  static const gracePeriod = IriTerm.prevalidated(
    'http://schema.org/gracePeriod',
  );

  /// hasCertification [Expects: http://schema.org/Certification]
  ///
  /// Certification information about a product, organization, service, place, or person.
  ///
  /// Can be used on: http://schema.org/Organization, http://schema.org/Person, http://schema.org/Place, http://schema.org/Product, http://schema.org/Service
  ///
  static const hasCertification = IriTerm.prevalidated(
    'http://schema.org/hasCertification',
  );

  /// hasOfferCatalog [Expects: http://schema.org/OfferCatalog]
  ///
  /// Indicates an OfferCatalog listing for this Organization, Person, or Service.
  ///
  /// Can be used on: http://schema.org/Organization, http://schema.org/Person, http://schema.org/Service
  ///
  static const hasOfferCatalog = IriTerm.prevalidated(
    'http://schema.org/hasOfferCatalog',
  );

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

  /// interestRate [Expects: http://schema.org/Number, http://schema.org/QuantitativeValue]
  ///
  /// The interest rate, charged or paid, applicable to the financial product. Note: This is different from the calculated annualPercentageRate.
  ///
  /// Can be used on: http://schema.org/FinancialProduct
  ///
  static const interestRate = IriTerm.prevalidated(
    'http://schema.org/interestRate',
  );

  /// isRelatedTo [Expects: http://schema.org/Product, http://schema.org/Service]
  ///
  /// A pointer to another, somehow related product (or multiple products).
  ///
  /// Can be used on: http://schema.org/Product, http://schema.org/Service
  ///
  static const isRelatedTo = IriTerm.prevalidated(
    'http://schema.org/isRelatedTo',
  );

  /// isSimilarTo [Expects: http://schema.org/Product, http://schema.org/Service]
  ///
  /// A pointer to another, functionally similar product (or multiple products).
  ///
  /// Can be used on: http://schema.org/Product, http://schema.org/Service
  ///
  static const isSimilarTo = IriTerm.prevalidated(
    'http://schema.org/isSimilarTo',
  );

  /// loanRepaymentForm [Expects: http://schema.org/RepaymentSpecification]
  ///
  /// A form of paying back money previously borrowed from a lender. Repayment usually takes the form of periodic payments that normally include part principal plus interest in each payment.
  ///
  /// Can be used on: http://schema.org/LoanOrCredit
  ///
  static const loanRepaymentForm = IriTerm.prevalidated(
    'http://schema.org/loanRepaymentForm',
  );

  /// loanTerm [Expects: http://schema.org/QuantitativeValue]
  ///
  /// The duration of the loan or credit agreement.
  ///
  /// Can be used on: http://schema.org/LoanOrCredit
  ///
  static const loanTerm = IriTerm.prevalidated('http://schema.org/loanTerm');

  /// loanType [Expects: http://schema.org/Text, http://schema.org/URL]
  ///
  /// The type of a loan or credit.
  ///
  /// Can be used on: http://schema.org/LoanOrCredit
  ///
  static const loanType = IriTerm.prevalidated('http://schema.org/loanType');

  /// logo [Expects: http://schema.org/ImageObject, http://schema.org/URL]
  ///
  /// An associated logo.
  ///
  /// Can be used on: http://schema.org/Brand, http://schema.org/Certification, http://schema.org/Organization, http://schema.org/Place, http://schema.org/Product, http://schema.org/Service
  ///
  static const logo = IriTerm.prevalidated('http://schema.org/logo');

  /// monthlyMinimumRepaymentAmount [Expects: http://schema.org/MonetaryAmount, http://schema.org/Number]
  ///
  /// The minimum payment is the lowest amount of money that one is required to pay on a credit card statement each month.
  ///
  /// Can be used on: http://schema.org/PaymentCard
  ///
  static const monthlyMinimumRepaymentAmount = IriTerm.prevalidated(
    'http://schema.org/monthlyMinimumRepaymentAmount',
  );

  /// name [Expects: http://schema.org/Text]
  ///
  /// The name of the item.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const name = IriTerm.prevalidated('http://schema.org/name');

  /// paymentMethodType [Expects: http://schema.org/PaymentMethodType]
  ///
  /// The type of a payment method.
  ///
  /// Can be used on: http://schema.org/PaymentMethod
  ///
  static const paymentMethodType = IriTerm.prevalidated(
    'http://schema.org/paymentMethodType',
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

  /// produces [Expects: http://schema.org/Thing]
  ///
  /// The tangible thing generated by the service, e.g. a passport, permit, etc.
  ///
  /// Can be used on: http://schema.org/Service
  ///
  static const produces = IriTerm.prevalidated('http://schema.org/produces');

  /// providerMobility [Expects: http://schema.org/Text]
  ///
  /// Indicates the mobility of a provided service (e.g. 'static', 'dynamic').
  ///
  /// Can be used on: http://schema.org/Service
  ///
  static const providerMobility = IriTerm.prevalidated(
    'http://schema.org/providerMobility',
  );

  /// recourseLoan [Expects: http://schema.org/Boolean]
  ///
  /// The only way you get the money back in the event of default is the security. Recourse is where you still have the opportunity to go back to the borrower for the rest of the money.
  ///
  /// Can be used on: http://schema.org/LoanOrCredit
  ///
  static const recourseLoan = IriTerm.prevalidated(
    'http://schema.org/recourseLoan',
  );

  /// renegotiableLoan [Expects: http://schema.org/Boolean]
  ///
  /// Whether the terms for payment of interest can be renegotiated during the life of the loan.
  ///
  /// Can be used on: http://schema.org/LoanOrCredit
  ///
  static const renegotiableLoan = IriTerm.prevalidated(
    'http://schema.org/renegotiableLoan',
  );

  /// requiredCollateral [Expects: http://schema.org/Text, http://schema.org/Thing]
  ///
  /// Assets required to secure loan or credit repayments. It may take form of third party pledge, goods, financial instruments (cash, securities, etc.)
  ///
  /// Can be used on: http://schema.org/LoanOrCredit
  ///
  static const requiredCollateral = IriTerm.prevalidated(
    'http://schema.org/requiredCollateral',
  );

  /// sameAs [Expects: http://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: http://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('http://schema.org/sameAs');

  /// serviceAudience [Expects: http://schema.org/Audience]
  ///
  /// The audience eligible for this service.
  ///
  /// Can be used on: http://schema.org/Service
  ///
  static const serviceAudience = IriTerm.prevalidated(
    'http://schema.org/serviceAudience',
  );

  /// serviceType [Expects: http://schema.org/GovernmentBenefitsType, http://schema.org/Text]
  ///
  /// The type of service being offered, e.g. veterans' benefits, emergency relief, etc.
  ///
  /// Can be used on: http://schema.org/Service
  ///
  static const serviceType = IriTerm.prevalidated(
    'http://schema.org/serviceType',
  );

  /// slogan [Expects: http://schema.org/Text]
  ///
  /// A slogan or motto associated with the item.
  ///
  /// Can be used on: http://schema.org/Brand, http://schema.org/Organization, http://schema.org/Place, http://schema.org/Product, http://schema.org/Service
  ///
  static const slogan = IriTerm.prevalidated('http://schema.org/slogan');

  /// termsOfService [Expects: http://schema.org/Text, http://schema.org/URL]
  ///
  /// Human-readable terms of service documentation.
  ///
  /// Can be used on: http://schema.org/Service
  ///
  static const termsOfService = IriTerm.prevalidated(
    'http://schema.org/termsOfService',
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

  /// audience [Expects: http://schema.org/Audience]
  ///
  /// An intended audience, i.e. a group for whom something was created.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/LodgingBusiness, http://schema.org/PlayAction, http://schema.org/Product, http://schema.org/Service
  ///
  static const audience = IriTerm.prevalidated('http://schema.org/audience');

  /// award [Expects: http://schema.org/Text]
  ///
  /// An award won by or for this item.
  ///
  /// Can be used on: http://schema.org/CreativeWork, http://schema.org/Organization, http://schema.org/Person, http://schema.org/Product, http://schema.org/Service
  ///
  static const award = IriTerm.prevalidated('http://schema.org/award');

  /// broker [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred.
  ///
  /// Can be used on: http://schema.org/Invoice, http://schema.org/Order, http://schema.org/Reservation, http://schema.org/Service
  ///
  static const broker = IriTerm.prevalidated('http://schema.org/broker');

  /// category [Expects: http://schema.org/CategoryCode, http://schema.org/PhysicalActivityCategory, http://schema.org/Text, http://schema.org/Thing, http://schema.org/URL]
  ///
  /// A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
  ///
  /// Can be used on: http://schema.org/ActionAccessSpecification, http://schema.org/Invoice, http://schema.org/Offer, http://schema.org/PhysicalActivity, http://schema.org/Product, http://schema.org/Recommendation, http://schema.org/Service, http://schema.org/SpecialAnnouncement
  ///
  static const category = IriTerm.prevalidated('http://schema.org/category');

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

  /// provider [Expects: http://schema.org/Organization, http://schema.org/Person]
  ///
  /// The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
  ///
  /// Can be used on: http://schema.org/Action, http://schema.org/CreativeWork, http://schema.org/EducationalOccupationalProgram, http://schema.org/FinancialIncentive, http://schema.org/Invoice, http://schema.org/ParcelDelivery, http://schema.org/Reservation, http://schema.org/Service, http://schema.org/Trip
  ///
  static const provider = IriTerm.prevalidated('http://schema.org/provider');

  /// review [Expects: http://schema.org/Review]
  ///
  /// A review of the item.
  ///
  /// Can be used on: http://schema.org/Brand, http://schema.org/CreativeWork, http://schema.org/Event, http://schema.org/Offer, http://schema.org/Organization, http://schema.org/Place, http://schema.org/Product, http://schema.org/Service
  ///
  static const review = IriTerm.prevalidated('http://schema.org/review');

  /// serviceArea [Expects: http://schema.org/AdministrativeArea, http://schema.org/GeoShape, http://schema.org/Place]
  ///
  /// The geographic area where the service is provided.
  ///
  /// Can be used on: http://schema.org/ContactPoint, http://schema.org/Organization, http://schema.org/Service
  ///
  static const serviceArea = IriTerm.prevalidated(
    'http://schema.org/serviceArea',
  );

  /// serviceOutput [Expects: http://schema.org/Thing]
  ///
  /// The tangible thing generated by the service, e.g. a passport, permit, etc.
  ///
  /// Can be used on: http://schema.org/Service
  ///
  static const serviceOutput = IriTerm.prevalidated(
    'http://schema.org/serviceOutput',
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
