// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:implementation_imports, file_names, unnecessary_new
// ignore_for_file:unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file:argument_type_not_assignable, invalid_assignment
// ignore_for_file:prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file:comment_references

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_af-ZA.dart' as messages_af_za;
import 'messages_ar-SA.dart' as messages_ar_sa;
import 'messages_be-BY.dart' as messages_be_by;
import 'messages_ca-ES.dart' as messages_ca_es;
import 'messages_cs-CZ.dart' as messages_cs_cz;
import 'messages_da-DK.dart' as messages_da_dk;
import 'messages_de-DE.dart' as messages_de_de;
import 'messages_el-GR.dart' as messages_el_gr;
import 'messages_en.dart' as messages_en;
import 'messages_es-ES.dart' as messages_es_es;
import 'messages_fi-FI.dart' as messages_fi_fi;
import 'messages_fr-FR.dart' as messages_fr_fr;
import 'messages_he-IL.dart' as messages_he_il;
import 'messages_hu-HU.dart' as messages_hu_hu;
import 'messages_it-IT.dart' as messages_it_it;
import 'messages_ja-JP.dart' as messages_ja_jp;
import 'messages_kk-KZ.dart' as messages_kk_kz;
import 'messages_ko-KR.dart' as messages_ko_kr;
import 'messages_nl-NL.dart' as messages_nl_nl;
import 'messages_no-NO.dart' as messages_no_no;
import 'messages_pl-PL.dart' as messages_pl_pl;
import 'messages_pt-BR.dart' as messages_pt_br;
import 'messages_ro-RO.dart' as messages_ro_ro;
import 'messages_ru-RU.dart' as messages_ru_ru;
import 'messages_sr-SP.dart' as messages_sr_sp;
import 'messages_sv-SE.dart' as messages_sv_se;
import 'messages_tr-TR.dart' as messages_tr_tr;
import 'messages_uk-UA.dart' as messages_uk_ua;
import 'messages_vi-VN.dart' as messages_vi_vn;
import 'messages_zh-TW.dart' as messages_zh_tw;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'af_ZA': () => new SynchronousFuture(null),
  'ar_SA': () => new SynchronousFuture(null),
  'be_BY': () => new SynchronousFuture(null),
  'ca_ES': () => new SynchronousFuture(null),
  'cs_CZ': () => new SynchronousFuture(null),
  'da_DK': () => new SynchronousFuture(null),
  'de_DE': () => new SynchronousFuture(null),
  'el_GR': () => new SynchronousFuture(null),
  'en': () => new SynchronousFuture(null),
  'es_ES': () => new SynchronousFuture(null),
  'fi_FI': () => new SynchronousFuture(null),
  'fr_FR': () => new SynchronousFuture(null),
  'he_IL': () => new SynchronousFuture(null),
  'hu_HU': () => new SynchronousFuture(null),
  'it_IT': () => new SynchronousFuture(null),
  'ja_JP': () => new SynchronousFuture(null),
  'kk_KZ': () => new SynchronousFuture(null),
  'ko_KR': () => new SynchronousFuture(null),
  'nl_NL': () => new SynchronousFuture(null),
  'no_NO': () => new SynchronousFuture(null),
  'pl_PL': () => new SynchronousFuture(null),
  'pt_BR': () => new SynchronousFuture(null),
  'ro_RO': () => new SynchronousFuture(null),
  'ru_RU': () => new SynchronousFuture(null),
  'sr_SP': () => new SynchronousFuture(null),
  'sv_SE': () => new SynchronousFuture(null),
  'tr_TR': () => new SynchronousFuture(null),
  'uk_UA': () => new SynchronousFuture(null),
  'vi_VN': () => new SynchronousFuture(null),
  'zh_TW': () => new SynchronousFuture(null),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'af_ZA':
      return messages_af_za.messages;
    case 'ar_SA':
      return messages_ar_sa.messages;
    case 'be_BY':
      return messages_be_by.messages;
    case 'ca_ES':
      return messages_ca_es.messages;
    case 'cs_CZ':
      return messages_cs_cz.messages;
    case 'da_DK':
      return messages_da_dk.messages;
    case 'de_DE':
      return messages_de_de.messages;
    case 'el_GR':
      return messages_el_gr.messages;
    case 'en':
      return messages_en.messages;
    case 'es_ES':
      return messages_es_es.messages;
    case 'fi_FI':
      return messages_fi_fi.messages;
    case 'fr_FR':
      return messages_fr_fr.messages;
    case 'he_IL':
      return messages_he_il.messages;
    case 'hu_HU':
      return messages_hu_hu.messages;
    case 'it_IT':
      return messages_it_it.messages;
    case 'ja_JP':
      return messages_ja_jp.messages;
    case 'kk_KZ':
      return messages_kk_kz.messages;
    case 'ko_KR':
      return messages_ko_kr.messages;
    case 'nl_NL':
      return messages_nl_nl.messages;
    case 'no_NO':
      return messages_no_no.messages;
    case 'pl_PL':
      return messages_pl_pl.messages;
    case 'pt_BR':
      return messages_pt_br.messages;
    case 'ro_RO':
      return messages_ro_ro.messages;
    case 'ru_RU':
      return messages_ru_ru.messages;
    case 'sr_SP':
      return messages_sr_sp.messages;
    case 'sv_SE':
      return messages_sv_se.messages;
    case 'tr_TR':
      return messages_tr_tr.messages;
    case 'uk_UA':
      return messages_uk_ua.messages;
    case 'vi_VN':
      return messages_vi_vn.messages;
    case 'zh_TW':
      return messages_zh_tw.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) {
  var availableLocale = Intl.verifiedLocale(
      localeName, (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return new SynchronousFuture(false);
  }
  var lib = _deferredLibraries[availableLocale];
  lib == null ? new SynchronousFuture(false) : lib();
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return new SynchronousFuture(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  var actualLocale =
      Intl.verifiedLocale(locale, _messagesExistFor, onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
