// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl_PL locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl_PL';

  static String m7(version, codename) => "Wersja ${version} (${codename})";

  static String m9(error) => "Nie udało się załadować czatu: ${error}";

  static String m10(id) => "Wiadomość ${id} nie została odnaleziona";

  static String m11(name) => "Kontakt: ${name}";

  static String m14(count) =>
      "${count} ${Intl.plural(count, one: 'przekazana wiadomość', other: 'przekazane wiadomości')}";

  static String m2(name) => "${name} dzwoni do ciebie...";

  static String m3(name) => "${name} właśnie utworzył z tobą sekretny czat!";

  static String m24(count) =>
      "${Intl.plural(count, one: 'sekunda', other: 'sekundy')}";

  static String m26(emoji) => "${emoji} Naklejka";

  static String m5(user) => "${user} opuścił czat";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("O aplikacji"),
        "accounts": MessageLookupByLibrary.simpleMessage("Konta"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Dodaj konto"),
        "album": MessageLookupByLibrary.simpleMessage("Album"),
        "appVersion": m7,
        "avatarWasChanged":
            MessageLookupByLibrary.simpleMessage("Awatar został zmieniony"),
        "avatarWasDeleted":
            MessageLookupByLibrary.simpleMessage("Awatar został usunięty"),
        "bgWasChanged":
            MessageLookupByLibrary.simpleMessage("Tło zostało zmienione"),
        "calls": MessageLookupByLibrary.simpleMessage("Połączenia"),
        "channelDescription":
            MessageLookupByLibrary.simpleMessage("Nowości i aktualizacje"),
        "chatBlocLoadingError": m9,
        "chatInfoChannel":
            MessageLookupByLibrary.simpleMessage("Informacje o kanale"),
        "chatInfoGroup":
            MessageLookupByLibrary.simpleMessage("Informacje o grupie"),
        "chatInfoPersonal":
            MessageLookupByLibrary.simpleMessage("Informacje o profilu"),
        "chatListHeaderArchive":
            MessageLookupByLibrary.simpleMessage("Archiwum"),
        "chatViewMessageNotFoundError": m10,
        "chatWasShared":
            MessageLookupByLibrary.simpleMessage("Czat został udostępniony"),
        "closeButton": MessageLookupByLibrary.simpleMessage("Zamknij"),
        "colorScheme": MessageLookupByLibrary.simpleMessage("Wygląd"),
        "connectionConnected":
            MessageLookupByLibrary.simpleMessage("Połączono"),
        "connectionConnecting":
            MessageLookupByLibrary.simpleMessage("Łączenie..."),
        "connectionConnectingToProxy":
            MessageLookupByLibrary.simpleMessage("Łączenie z proxy..."),
        "connectionUpdating":
            MessageLookupByLibrary.simpleMessage("Aktualizowanie..."),
        "connectionWaitingForNetwork":
            MessageLookupByLibrary.simpleMessage("Oczekiwanie na sieć..."),
        "contactPrefix": m11,
        "createProxy": MessageLookupByLibrary.simpleMessage("Nowe proxy"),
        "disableChatOptimizations":
            MessageLookupByLibrary.simpleMessage("Wyłącz czyszczenie czatów"),
        "disableMicroAvatars":
            MessageLookupByLibrary.simpleMessage("Wyłącz małe awatary"),
        "disableProfileAvatars":
            MessageLookupByLibrary.simpleMessage("Wyłącz awatary"),
        "disableProfileAvatarsDesc":
            MessageLookupByLibrary.simpleMessage("Pokaż w listach czatów"),
        "document": MessageLookupByLibrary.simpleMessage("Dokument"),
        "editProxy": MessageLookupByLibrary.simpleMessage("Edytuj proxy"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Wprowadź hasło"),
        "error": MessageLookupByLibrary.simpleMessage("Błąd"),
        "folderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Folder jest pusty"),
        "forwardedMessagesPlural": m14,
        "getStarted": MessageLookupByLibrary.simpleMessage("Rozpocznij"),
        "gif": MessageLookupByLibrary.simpleMessage("GIF"),
        "groupWasCreated":
            MessageLookupByLibrary.simpleMessage("Grupa została stworzona"),
        "hasJoinedTelegram":
            MessageLookupByLibrary.simpleMessage("dołączył do Telegrama!"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Nieprawidłowe hasło"),
        "interface": MessageLookupByLibrary.simpleMessage("Interfejs"),
        "loadingMessage":
            MessageLookupByLibrary.simpleMessage("Ładowanie wiadomości..."),
        "location": MessageLookupByLibrary.simpleMessage("Lokalizacja"),
        "logout": MessageLookupByLibrary.simpleMessage("Wyloguj"),
        "messageContentUnsupported": MessageLookupByLibrary.simpleMessage(
            "Nieobsługiwany typ wiadomości:\n"),
        "messages": MessageLookupByLibrary.simpleMessage("Wiadomości"),
        "notificationNewSecretChat": MessageLookupByLibrary.simpleMessage(
            "Nowy sekretny czat został stworzony"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Sekretny czat"),
        "notificationTextCall": m2,
        "notificationTextSecretChat": m3,
        "notifications": MessageLookupByLibrary.simpleMessage("Powiadomienia"),
        "notificationsChannelChannels":
            MessageLookupByLibrary.simpleMessage("Kanały"),
        "notificationsChannelGroups":
            MessageLookupByLibrary.simpleMessage("Grupy"),
        "notificationsChannelMessages":
            MessageLookupByLibrary.simpleMessage("Wiadomości"),
        "officialChannel":
            MessageLookupByLibrary.simpleMessage("Oficjalny kanał"),
        "optimizeStorageUsage":
            MessageLookupByLibrary.simpleMessage("Optymalizuj pamięć"),
        "optmizing": MessageLookupByLibrary.simpleMessage("Optymalizowanie..."),
        "password": MessageLookupByLibrary.simpleMessage("Hasło"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Płatność wykonana pomyślnie"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Dodaj proxy"),
        "proxyPassword": MessageLookupByLibrary.simpleMessage("Hasło"),
        "proxyPort": MessageLookupByLibrary.simpleMessage("Port proxy"),
        "proxyServer": MessageLookupByLibrary.simpleMessage("Serwer proxy"),
        "proxySettingsButton":
            MessageLookupByLibrary.simpleMessage("Ustawienia proxy"),
        "proxySettingsMainToggle":
            MessageLookupByLibrary.simpleMessage("Proxy"),
        "proxySettingsTitle":
            MessageLookupByLibrary.simpleMessage("Ustawienia proxy"),
        "proxyType": MessageLookupByLibrary.simpleMessage("Rodzaj proxy"),
        "proxyTypeHTTP": MessageLookupByLibrary.simpleMessage("HTTP"),
        "proxyTypeMTProto": MessageLookupByLibrary.simpleMessage("MTProto"),
        "proxyTypePickerTitle":
            MessageLookupByLibrary.simpleMessage("Wybierz rodzaj proxy"),
        "proxyTypeSOCKS5": MessageLookupByLibrary.simpleMessage("SOCKS5"),
        "proxyUser": MessageLookupByLibrary.simpleMessage("Nazwa użytkownika"),
        "qrInstruction": MessageLookupByLibrary.simpleMessage(
            "1. Otwórz Telegrama na swoim telefonie\n\n2. Otwórz Ustawienia > Urządzenia > Połącz z komputerem stacjonarnym\n\n3. Zeskanuj ten kod, aby się zalogować"),
        "qrScanTitle":
            MessageLookupByLibrary.simpleMessage("Zeskanuj aby się zalogować"),
        "removeButton": MessageLookupByLibrary.simpleMessage("Usuń"),
        "runInBackground":
            MessageLookupByLibrary.simpleMessage("Powiadomienia"),
        "secondsCountPlural": m24,
        "secretChats": MessageLookupByLibrary.simpleMessage("Sekretne czaty"),
        "sectionAppearance": MessageLookupByLibrary.simpleMessage("Wygląd"),
        "sectionPerformance": MessageLookupByLibrary.simpleMessage("Wydajność"),
        "selectShapeTitle":
            MessageLookupByLibrary.simpleMessage("Wybierz kształt zegarka"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Wybierz motyw"),
        "send": MessageLookupByLibrary.simpleMessage("Wyślij"),
        "sendFile": MessageLookupByLibrary.simpleMessage("Wyślij plik"),
        "sendMediaGIFTitle":
            MessageLookupByLibrary.simpleMessage("Wybierz GIF"),
        "sendMediaPhotoTitle":
            MessageLookupByLibrary.simpleMessage("Wybierz zdjęcie"),
        "sendMediaStickerTitle":
            MessageLookupByLibrary.simpleMessage("Wybierz naklejkę"),
        "sendVoiceMessageTitle":
            MessageLookupByLibrary.simpleMessage("Nagraj notatkę głosową"),
        "settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "someone": MessageLookupByLibrary.simpleMessage("Ktoś"),
        "something": MessageLookupByLibrary.simpleMessage("Coś"),
        "stickerPlainTexted": m26,
        "storage": MessageLookupByLibrary.simpleMessage("Pamięć"),
        "storageFreeSpace":
            MessageLookupByLibrary.simpleMessage("Wolne miejsce"),
        "storageHandyGramData":
            MessageLookupByLibrary.simpleMessage("Dane HandyGrama"),
        "storageNonHandyGram":
            MessageLookupByLibrary.simpleMessage("Pozostałe aplikacje"),
        "templateTitleRepliesBot":
            MessageLookupByLibrary.simpleMessage("Odpowiedzi"),
        "templateTitleSavedMessages":
            MessageLookupByLibrary.simpleMessage("Zapisane wiadomości"),
        "titleWasChanged":
            MessageLookupByLibrary.simpleMessage("Tytuł został zmieniony"),
        "uiScale": MessageLookupByLibrary.simpleMessage("Skala interfejsu"),
        "userHasLeft": m5,
        "watchShape":
            MessageLookupByLibrary.simpleMessage("Kształt ekranu zegarka"),
        "you": MessageLookupByLibrary.simpleMessage("Ty")
      };
}
