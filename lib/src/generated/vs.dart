// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated by VocabularyBuilder

import 'package:rdf_core/rdf_core.dart';

/// Main Vs vocabulary class containing all terms
///
/// Contains all terms defined in the http://www.w3.org/2003/06/sw-vocab-status/ns# vocabulary.
class Vs {
  // Private constructor prevents instantiation
  const Vs._();

  /// Base IRI for Vs vocabulary
  /// [Spec](http://www.w3.org/2003/06/sw-vocab-status/ns#)
  static const String namespace =
      'http://www.w3.org/2003/06/sw-vocab-status/ns#';
  static const String prefix = 'vs';

  /// IRI for vs:moreinfo
  ///
  /// more information about the status etc of a term, typically human oriented
  ///
  static const moreinfo = IriTerm.prevalidated(
    'http://www.w3.org/2003/06/sw-vocab-status/ns#moreinfo',
  );

  /// IRI for vs:userdocs
  ///
  /// human-oriented documentation, examples etc for use of this term
  ///
  static const userdocs = IriTerm.prevalidated(
    'http://www.w3.org/2003/06/sw-vocab-status/ns#userdocs',
  );

  /// IRI for vs:term_status
  ///
  /// the status of a vocabulary term, expressed as a short symbolic string; known values include 'unstable','testing', 'stable' and 'archaic'
  ///
  /// Can be used on all classes in this vocabulary
  ///
  static const term_status = IriTerm.prevalidated(
    'http://www.w3.org/2003/06/sw-vocab-status/ns#term_status',
  );
}
