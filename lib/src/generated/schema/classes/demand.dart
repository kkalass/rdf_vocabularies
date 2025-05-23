// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// Demand class from Schema vocabulary
///
/// A demand entity represents the public, not necessarily binding, not necessarily exclusive, announcement by an organization or person to seek a certain type of goods or services. For describing demand using this type, the very same properties used for Offer apply.
///
/// Inherits from:
/// - Intangible (https://schema.org/Intangible)
/// - Resource (http://www.w3.org/2000/01/rdf-schema#Resource)
/// - Thing (https://schema.org/Thing)
///
/// This class provides access to all properties that can be used with Demand.
/// [Class Reference](https://schema.org/Demand)
///
/// [Vocabulary Reference](https://schema.org/)
class SchemaDemand {
  // Private constructor prevents instantiation
  const SchemaDemand._();

  /// IRI term for the Demand class
  /// Use this to specify that a resource is of this type.
  static const classIri = IriTerm.prevalidated('https://schema.org/Demand');

  /// acceptedPaymentMethod [Expects: https://schema.org/LoanOrCredit, https://schema.org/PaymentMethod, https://schema.org/Text]
  ///
  /// The payment method(s) that are accepted in general by an organization, or for some specific demand or offer.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/Organization
  ///
  static const acceptedPaymentMethod = IriTerm.prevalidated(
    'https://schema.org/acceptedPaymentMethod',
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

  /// advanceBookingRequirement [Expects: https://schema.org/QuantitativeValue]
  ///
  /// The amount of time that is required between accepting the offer and the actual usage of the resource or service.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer
  ///
  static const advanceBookingRequirement = IriTerm.prevalidated(
    'https://schema.org/advanceBookingRequirement',
  );

  /// asin [Expects: https://schema.org/Text, https://schema.org/URL]
  ///
  /// An Amazon Standard Identification Number (ASIN) is a 10-character alphanumeric unique identifier assigned by Amazon.com and its partners for product identification within the Amazon organization (summary from [Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s article).
  ///
  /// Note also that this is a definition for how to include ASINs in Schema.org data, and not a definition of ASINs in general - see documentation from Amazon for authoritative details.
  /// ASINs are most commonly encoded as text strings, but the [asin] property supports URL/URI as potential values too.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/Product
  ///
  static const asin = IriTerm.prevalidated('https://schema.org/asin');

  /// availability [Expects: https://schema.org/ItemAvailability]
  ///
  /// The availability of this item&#x2014;for example In stock, Out of stock, Pre-order, etc.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer
  ///
  static const availability = IriTerm.prevalidated(
    'https://schema.org/availability',
  );

  /// availabilityEnds [Expects: https://schema.org/Date, https://schema.org/DateTime, https://schema.org/Time]
  ///
  /// The end of the availability of the product or service included in the offer.
  ///
  /// Can be used on: https://schema.org/ActionAccessSpecification, https://schema.org/Demand, https://schema.org/Offer
  ///
  static const availabilityEnds = IriTerm.prevalidated(
    'https://schema.org/availabilityEnds',
  );

  /// availabilityStarts [Expects: https://schema.org/Date, https://schema.org/DateTime, https://schema.org/Time]
  ///
  /// The beginning of the availability of the product or service included in the offer.
  ///
  /// Can be used on: https://schema.org/ActionAccessSpecification, https://schema.org/Demand, https://schema.org/Offer
  ///
  static const availabilityStarts = IriTerm.prevalidated(
    'https://schema.org/availabilityStarts',
  );

  /// availableAtOrFrom [Expects: https://schema.org/Place]
  ///
  /// The place(s) from which the offer can be obtained (e.g. store locations).
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer
  ///
  static const availableAtOrFrom = IriTerm.prevalidated(
    'https://schema.org/availableAtOrFrom',
  );

  /// availableDeliveryMethod [Expects: https://schema.org/DeliveryMethod]
  ///
  /// The delivery method(s) available for this offer.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer
  ///
  static const availableDeliveryMethod = IriTerm.prevalidated(
    'https://schema.org/availableDeliveryMethod',
  );

  /// businessFunction [Expects: https://schema.org/BusinessFunction]
  ///
  /// The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/TypeAndQuantityNode
  ///
  static const businessFunction = IriTerm.prevalidated(
    'https://schema.org/businessFunction',
  );

  /// deliveryLeadTime [Expects: https://schema.org/QuantitativeValue]
  ///
  /// The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer
  ///
  static const deliveryLeadTime = IriTerm.prevalidated(
    'https://schema.org/deliveryLeadTime',
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

  /// eligibleCustomerType [Expects: https://schema.org/BusinessEntityType]
  ///
  /// The type(s) of customers for which the given offer is valid.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer
  ///
  static const eligibleCustomerType = IriTerm.prevalidated(
    'https://schema.org/eligibleCustomerType',
  );

  /// eligibleDuration [Expects: https://schema.org/QuantitativeValue]
  ///
  /// The duration for which the given offer is valid.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer
  ///
  static const eligibleDuration = IriTerm.prevalidated(
    'https://schema.org/eligibleDuration',
  );

  /// eligibleQuantity [Expects: https://schema.org/QuantitativeValue]
  ///
  /// The interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/PriceSpecification
  ///
  static const eligibleQuantity = IriTerm.prevalidated(
    'https://schema.org/eligibleQuantity',
  );

  /// eligibleRegion [Expects: https://schema.org/GeoShape, https://schema.org/Place, https://schema.org/Text]
  ///
  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\n\nSee also {[ineligibleRegion]}.
  ///
  ///
  /// Can be used on: https://schema.org/ActionAccessSpecification, https://schema.org/DeliveryChargeSpecification, https://schema.org/Demand, https://schema.org/Offer
  ///
  static const eligibleRegion = IriTerm.prevalidated(
    'https://schema.org/eligibleRegion',
  );

  /// eligibleTransactionVolume [Expects: https://schema.org/PriceSpecification]
  ///
  /// The transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/PriceSpecification
  ///
  static const eligibleTransactionVolume = IriTerm.prevalidated(
    'https://schema.org/eligibleTransactionVolume',
  );

  /// gtin12 [Expects: https://schema.org/Text]
  ///
  /// The GTIN-12 code of the product, or the product to which the offer refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix, Item Reference, and Check Digit used to identify trade items. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/Product
  ///
  static const gtin12 = IriTerm.prevalidated('https://schema.org/gtin12');

  /// gtin13 [Expects: https://schema.org/Text]
  ///
  /// The GTIN-13 code of the product, or the product to which the offer refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes can be converted into a GTIN-13 code by simply adding a preceding zero. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/Product
  ///
  static const gtin13 = IriTerm.prevalidated('https://schema.org/gtin13');

  /// gtin14 [Expects: https://schema.org/Text]
  ///
  /// The GTIN-14 code of the product, or the product to which the offer refers. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/Product
  ///
  static const gtin14 = IriTerm.prevalidated('https://schema.org/gtin14');

  /// gtin8 [Expects: https://schema.org/Text]
  ///
  /// The GTIN-8 code of the product, or the product to which the offer refers. This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/Product
  ///
  static const gtin8 = IriTerm.prevalidated('https://schema.org/gtin8');

  /// includesObject [Expects: https://schema.org/TypeAndQuantityNode]
  ///
  /// This links to a node or nodes indicating the exact quantity of the products included in  an {[Offer]} or {[ProductCollection]}.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/ProductCollection
  ///
  static const includesObject = IriTerm.prevalidated(
    'https://schema.org/includesObject',
  );

  /// ineligibleRegion [Expects: https://schema.org/GeoShape, https://schema.org/Place, https://schema.org/Text]
  ///
  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\n\nSee also {[eligibleRegion]}.
  ///
  ///
  /// Can be used on: https://schema.org/ActionAccessSpecification, https://schema.org/DeliveryChargeSpecification, https://schema.org/Demand, https://schema.org/MediaObject, https://schema.org/Offer
  ///
  static const ineligibleRegion = IriTerm.prevalidated(
    'https://schema.org/ineligibleRegion',
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

  /// inventoryLevel [Expects: https://schema.org/QuantitativeValue]
  ///
  /// The current approximate inventory level for the item or items.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/SomeProducts
  ///
  static const inventoryLevel = IriTerm.prevalidated(
    'https://schema.org/inventoryLevel',
  );

  /// itemCondition [Expects: https://schema.org/OfferItemCondition]
  ///
  /// A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/MerchantReturnPolicy, https://schema.org/Offer, https://schema.org/Product
  ///
  static const itemCondition = IriTerm.prevalidated(
    'https://schema.org/itemCondition',
  );

  /// mpn [Expects: https://schema.org/Text]
  ///
  /// The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/Product
  ///
  static const mpn = IriTerm.prevalidated('https://schema.org/mpn');

  /// name [Expects: https://schema.org/Text]
  ///
  /// The name of the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const name = IriTerm.prevalidated('https://schema.org/name');

  /// potentialAction [Expects: https://schema.org/Action]
  ///
  /// Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const potentialAction = IriTerm.prevalidated(
    'https://schema.org/potentialAction',
  );

  /// priceSpecification [Expects: https://schema.org/PriceSpecification]
  ///
  /// One or more detailed price specifications, indicating the unit price and delivery or payment charges.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/DonateAction, https://schema.org/Offer, https://schema.org/TradeAction
  ///
  static const priceSpecification = IriTerm.prevalidated(
    'https://schema.org/priceSpecification',
  );

  /// sameAs [Expects: https://schema.org/URL]
  ///
  /// URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const sameAs = IriTerm.prevalidated('https://schema.org/sameAs');

  /// sku [Expects: https://schema.org/Text]
  ///
  /// The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/Product
  ///
  static const sku = IriTerm.prevalidated('https://schema.org/sku');

  /// url [Expects: https://schema.org/URL]
  ///
  /// URL of the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const url = IriTerm.prevalidated('https://schema.org/url');

  /// validFrom [Expects: https://schema.org/Date, https://schema.org/DateTime]
  ///
  /// The date when the item becomes valid.
  ///
  /// Can be used on: https://schema.org/Certification, https://schema.org/Demand, https://schema.org/FinancialIncentive, https://schema.org/LocationFeatureSpecification, https://schema.org/MonetaryAmount, https://schema.org/Offer, https://schema.org/OpeningHoursSpecification, https://schema.org/Permit, https://schema.org/PriceSpecification
  ///
  static const validFrom = IriTerm.prevalidated('https://schema.org/validFrom');

  /// validThrough [Expects: https://schema.org/Date, https://schema.org/DateTime]
  ///
  /// The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/FinancialIncentive, https://schema.org/JobPosting, https://schema.org/LocationFeatureSpecification, https://schema.org/MonetaryAmount, https://schema.org/Offer, https://schema.org/OpeningHoursSpecification, https://schema.org/PriceSpecification
  ///
  static const validThrough = IriTerm.prevalidated(
    'https://schema.org/validThrough',
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

  /// itemOffered [Expects: https://schema.org/AggregateOffer, https://schema.org/CreativeWork, https://schema.org/Event, https://schema.org/MenuItem, https://schema.org/Product, https://schema.org/Service, https://schema.org/Trip]
  ///
  /// An item being offered (or demanded). The transactional nature of the offer or demand is documented using {[businessFunction]}, e.g. sell, lease etc. While several common expected types are listed explicitly in this definition, others can be used. Using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer
  ///
  static const itemOffered = IriTerm.prevalidated(
    'https://schema.org/itemOffered',
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

  /// serialNumber [Expects: https://schema.org/Text]
  ///
  /// The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/IndividualProduct, https://schema.org/Offer
  ///
  static const serialNumber = IriTerm.prevalidated(
    'https://schema.org/serialNumber',
  );

  /// subjectOf [Expects: https://schema.org/CreativeWork, https://schema.org/Event]
  ///
  /// A CreativeWork or Event about this Thing.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const subjectOf = IriTerm.prevalidated('https://schema.org/subjectOf');

  /// warranty [Expects: https://schema.org/WarrantyPromise]
  ///
  /// The warranty promise(s) included in the offer.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer
  ///
  static const warranty = IriTerm.prevalidated('https://schema.org/warranty');

  /// seller [Expects: https://schema.org/Organization, https://schema.org/Person]
  ///
  /// An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
  ///
  /// Can be used on: https://schema.org/BuyAction, https://schema.org/Demand, https://schema.org/Flight, https://schema.org/Offer, https://schema.org/Order
  ///
  static const seller = IriTerm.prevalidated('https://schema.org/seller');

  /// areaServed [Expects: https://schema.org/AdministrativeArea, https://schema.org/GeoShape, https://schema.org/Place, https://schema.org/Text]
  ///
  /// The geographic area where a service or offered item is provided.
  ///
  /// Can be used on: https://schema.org/ContactPoint, https://schema.org/DeliveryChargeSpecification, https://schema.org/Demand, https://schema.org/FinancialIncentive, https://schema.org/Offer, https://schema.org/Organization, https://schema.org/Service
  ///
  static const areaServed = IriTerm.prevalidated(
    'https://schema.org/areaServed',
  );

  /// description [Expects: https://schema.org/Text, https://schema.org/TextObject]
  ///
  /// A description of the item.
  ///
  /// Can be used on: https://schema.org/Thing
  ///
  static const description = IriTerm.prevalidated(
    'https://schema.org/description',
  );

  /// gtin [Expects: https://schema.org/Text, https://schema.org/URL]
  ///
  /// A Global Trade Item Number ([GTIN](https://www.gs1.org/standards/id-keys/gtin)). GTINs identify trade items, including products and services, using numeric identification codes.
  ///
  /// A correct {[gtin]} value should be a valid GTIN, which means that it should be an all-numeric string of either 8, 12, 13 or 14 digits, or a "GS1 Digital Link" URL based on such a string. The numeric component should also have a [valid GS1 check digit](https://www.gs1.org/services/check-digit-calculator) and meet the other rules for valid GTINs. See also [GS1's GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) and [Wikipedia](https://en.wikipedia.org/wiki/Global_Trade_Item_Number) for more details. Left-padding of the gtin values is not required or encouraged. The {[gtin]} property generalizes the earlier {[gtin8]}, {[gtin12]}, {[gtin13]}, and {[gtin14]} properties.
  ///
  /// The GS1 [digital link specifications](https://www.gs1.org/standards/Digital-Link/) expresses GTINs as URLs (URIs, IRIs, etc.).
  /// Digital Links should be populated into the {[hasGS1DigitalLink]} attribute.
  ///
  /// Note also that this is a definition for how to include GTINs in Schema.org data, and not a definition of GTINs in general - see the GS1 documentation for authoritative details.
  ///
  /// Can be used on: https://schema.org/Demand, https://schema.org/Offer, https://schema.org/Product
  ///
  static const gtin = IriTerm.prevalidated('https://schema.org/gtin');

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
