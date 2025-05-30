// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// Main Xsd vocabulary class containing all terms
///
/// Contains all terms defined in the http://www.w3.org/2001/XMLSchema# vocabulary.
class Xsd {
  // Private constructor prevents instantiation
  const Xsd._();

  /// Base IRI for Xsd vocabulary
  /// [Spec](http://www.w3.org/2001/XMLSchema#)
  static const String namespace = 'http://www.w3.org/2001/XMLSchema#';
  static const String prefix = 'xsd';

  /// IRI for xsd:integer
  ///
  /// Integer datatype
  ///
  static const integer = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#integer',
  );

  /// IRI for xsd:positiveInteger
  ///
  /// Integer values greater than zero
  ///
  static const positiveInteger = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#positiveInteger',
  );

  /// IRI for xsd:negativeInteger
  ///
  /// Integer values less than zero
  ///
  static const negativeInteger = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#negativeInteger',
  );

  /// IRI for xsd:nonPositiveInteger
  ///
  /// Integer values less than or equal to zero
  ///
  static const nonPositiveInteger = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#nonPositiveInteger',
  );

  /// IRI for xsd:nonNegativeInteger
  ///
  /// Integer values greater than or equal to zero
  ///
  static const nonNegativeInteger = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#nonNegativeInteger',
  );

  /// IRI for xsd:long
  ///
  /// 64-bit integer
  ///
  static const long = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#long',
  );

  /// IRI for xsd:int
  ///
  /// 32-bit integer
  ///
  static const int = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#int',
  );

  /// IRI for xsd:short
  ///
  /// 16-bit integer
  ///
  static const short = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#short',
  );

  /// IRI for xsd:byte
  ///
  /// 8-bit integer
  ///
  static const byte = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#byte',
  );

  /// IRI for xsd:unsignedLong
  ///
  /// Unsigned 64-bit integer
  ///
  static const unsignedLong = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#unsignedLong',
  );

  /// IRI for xsd:unsignedInt
  ///
  /// Unsigned 32-bit integer
  ///
  static const unsignedInt = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#unsignedInt',
  );

  /// IRI for xsd:unsignedShort
  ///
  /// Unsigned 16-bit integer
  ///
  static const unsignedShort = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#unsignedShort',
  );

  /// IRI for xsd:unsignedByte
  ///
  /// Unsigned 8-bit integer
  ///
  static const unsignedByte = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#unsignedByte',
  );

  /// IRI for xsd:dateTimeStamp
  ///
  /// Date and time with required timezone
  ///
  static const dateTimeStamp = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#dateTimeStamp',
  );

  /// IRI for xsd:yearMonthDuration
  ///
  /// Duration limited to year-month (PnYnM)
  ///
  static const yearMonthDuration = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#yearMonthDuration',
  );

  /// IRI for xsd:dayTimeDuration
  ///
  /// Duration limited to day-time (PnDTnHnMnS)
  ///
  static const dayTimeDuration = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#dayTimeDuration',
  );

  /// IRI for xsd:normalizedString
  ///
  /// String with normalized whitespace
  ///
  static const normalizedString = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#normalizedString',
  );

  /// IRI for xsd:token
  ///
  /// String with normalized whitespace, no leading/trailing whitespace
  ///
  static const token = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#token',
  );

  /// IRI for xsd:Name
  ///
  /// XML Name
  ///
  static const Name = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#Name',
  );

  /// IRI for xsd:NCName
  ///
  /// XML non-colonized Name
  ///
  static const NCName = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#NCName',
  );

  /// IRI for xsd:NMTOKEN
  ///
  /// XML NMTOKEN
  ///
  static const NMTOKEN = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#NMTOKEN',
  );

  /// IRI for xsd:ID
  ///
  /// XML ID
  ///
  static const ID = IriTerm.prevalidated('http://www.w3.org/2001/XMLSchema#ID');

  /// IRI for xsd:IDREF
  ///
  /// XML IDREF
  ///
  static const IDREF = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#IDREF',
  );

  /// IRI for xsd:string
  ///
  /// String datatype
  ///
  static const string = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#string',
  );

  /// IRI for xsd:boolean
  ///
  /// Boolean datatype (true/false)
  ///
  static const boolean = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#boolean',
  );

  /// IRI for xsd:decimal
  ///
  /// Decimal datatype
  ///
  static const decimal = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#decimal',
  );

  /// IRI for xsd:float
  ///
  /// 32-bit floating point
  ///
  static const float = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#float',
  );

  /// IRI for xsd:double
  ///
  /// 64-bit floating point
  ///
  static const double = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#double',
  );

  /// IRI for xsd:date
  ///
  /// Date value (YYYY-MM-DD)
  ///
  static const date = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#date',
  );

  /// IRI for xsd:time
  ///
  /// Time value (hh:mm:ss)
  ///
  static const time = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#time',
  );

  /// IRI for xsd:dateTime
  ///
  /// Date and time value (YYYY-MM-DDThh:mm:ss)
  ///
  static const dateTime = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#dateTime',
  );

  /// IRI for xsd:gYear
  ///
  /// Gregorian calendar year (YYYY)
  ///
  static const gYear = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#gYear',
  );

  /// IRI for xsd:gMonth
  ///
  /// Gregorian calendar month (--MM--)
  ///
  static const gMonth = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#gMonth',
  );

  /// IRI for xsd:gDay
  ///
  /// Gregorian calendar day of month (---DD)
  ///
  static const gDay = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#gDay',
  );

  /// IRI for xsd:gYearMonth
  ///
  /// Gregorian calendar year and month (YYYY-MM)
  ///
  static const gYearMonth = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#gYearMonth',
  );

  /// IRI for xsd:gMonthDay
  ///
  /// Gregorian calendar month and day (--MM-DD)
  ///
  static const gMonthDay = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#gMonthDay',
  );

  /// IRI for xsd:duration
  ///
  /// Duration value (PnYnMnDTnHnMnS)
  ///
  static const duration = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#duration',
  );

  /// IRI for xsd:hexBinary
  ///
  /// Hex-encoded binary data
  ///
  static const hexBinary = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#hexBinary',
  );

  /// IRI for xsd:base64Binary
  ///
  /// Base64-encoded binary data
  ///
  static const base64Binary = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#base64Binary',
  );

  /// IRI for xsd:anyURI
  ///
  /// Uniform Resource Identifier
  ///
  static const anyURI = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#anyURI',
  );

  /// IRI for xsd:language
  ///
  /// Language tag (as per BCP 47)
  ///
  static const language = IriTerm.prevalidated(
    'http://www.w3.org/2001/XMLSchema#language',
  );
}
