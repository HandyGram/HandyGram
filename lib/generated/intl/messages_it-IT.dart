// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it_IT locale. All the
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
  String get localeName => 'it_IT';

  static String m7(version, codename) => "Versione ${version} (${codename})";

  static String m8(title) => "Audio: ${title}";

  static String m0(time) => "Chiamata (${time})";

  static String m9(error) => "Impossibile caricare la chat: ${error}";

  static String m1(user) => "${user} e altri sono stati aggiunti";

  static String m10(id) => "Messaggio ${id} non trovato";

  static String m11(name) => "Contatto: ${name}";

  static String m12(caption) => "[Documento] ${caption}";

  static String m13(name) => "Modificato l\'argomento \"${name}\"";

  static String m14(count) =>
      "${count} ${Intl.plural(count, one: 'messaggio inoltrato', other: 'messaggi inoltrati')}";

  static String m15(name) => "Nuovo argomento \"${name}\"";

  static String m16(count) =>
      "${count} ${Intl.plural(count, one: 'chiamata', other: 'chiamate')} in arrivo";

  static String m17(count) =>
      "${count} ${Intl.plural(count, one: 'menzione non letta', other: 'menzioni non lette')}";

  static String m18(count) =>
      "${count} ${Intl.plural(count, one: 'messaggio non letto', other: 'messaggi non letti')}";

  static String m2(name) => "${name} ti sta chiamando...";

  static String m3(name) => "${name} ha appena creato una chat segreta con te!";

  static String m19(caption) => "[Foto] ${caption}";

  static String m20(caption) => "[Sondaggio] ${caption}";

  static String m21(version) => "Powered by TDLib ${version}";

  static String m22(count) =>
      "Premium (${count} ${Intl.plural(count, one: 'mese', other: 'mesi')})";

  static String m4(date) => "Ultimo utilizzo: ${date}";

  static String m23(score) => "Punteggio ${score} nella partita";

  static String m24(count) =>
      "${Intl.plural(count, one: 'secondo', other: 'secondi')}";

  static String m25(count) =>
      "${count} ${Intl.plural(count, one: 'Stella', other: 'Stelle')} Telegram";

  static String m26(emoji) => "Adesivo ${emoji}";

  static String m27(time) => "Storia (${time})";

  static String m5(user) => "${user} ha abbandonato";

  static String m6(time) => "Videochiamata (${time})";

  static String m28(time) => "Chat video (${time})";

  static String m29(time) => "Nota video (${time})";

  static String m30(caption) => "[Video] ${caption}";

  static String m31(time) => "Nota vocale (${time})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("Info sull\'app"),
        "accounts": MessageLookupByLibrary.simpleMessage("Account"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Aggiungi account"),
        "album": MessageLookupByLibrary.simpleMessage("Album"),
        "appVersion": m7,
        "audio": MessageLookupByLibrary.simpleMessage("Audio"),
        "audioPrefix": m8,
        "avatarWasChanged":
            MessageLookupByLibrary.simpleMessage("L\'avatar è stato cambiato"),
        "avatarWasDeleted":
            MessageLookupByLibrary.simpleMessage("L\'avatar è stato eliminato"),
        "bgWasChanged": MessageLookupByLibrary.simpleMessage(
            "Lo sfondo è stato modificato"),
        "botWriteAccessAllowed": MessageLookupByLibrary.simpleMessage(
            "Il bot ha il permesso di scrivere messaggi"),
        "callWithTime": m0,
        "calls": MessageLookupByLibrary.simpleMessage("Chiamate"),
        "changedTheme": MessageLookupByLibrary.simpleMessage("Cambia tema"),
        "channelDescription":
            MessageLookupByLibrary.simpleMessage("Novità e aggiornamenti"),
        "chatBlocLoadingError": m9,
        "chatInfoBot": MessageLookupByLibrary.simpleMessage("Info bot"),
        "chatInfoChannel": MessageLookupByLibrary.simpleMessage("Info canale"),
        "chatInfoGroup": MessageLookupByLibrary.simpleMessage("Info gruppo"),
        "chatInfoPersonal":
            MessageLookupByLibrary.simpleMessage("Info profilo"),
        "chatListHeaderArchive":
            MessageLookupByLibrary.simpleMessage("Archivio"),
        "chatListHeaderFolder":
            MessageLookupByLibrary.simpleMessage("Cartella"),
        "chatListHeaderMain":
            MessageLookupByLibrary.simpleMessage("Tutte le chat"),
        "chatMembersWereAdded": m1,
        "chatViewMessageNotFoundError": m10,
        "chatWasShared":
            MessageLookupByLibrary.simpleMessage("La chat è stata condivisa"),
        "closeButton": MessageLookupByLibrary.simpleMessage("Chiudi"),
        "colorScheme": MessageLookupByLibrary.simpleMessage("Aspetto"),
        "connectionConnected": MessageLookupByLibrary.simpleMessage("Connesso"),
        "connectionConnecting":
            MessageLookupByLibrary.simpleMessage("Connessione..."),
        "connectionConnectingToProxy":
            MessageLookupByLibrary.simpleMessage("Connessione al proxy..."),
        "connectionUpdating":
            MessageLookupByLibrary.simpleMessage("Aggiornamento..."),
        "connectionWaitingForNetwork":
            MessageLookupByLibrary.simpleMessage("In attesa della rete..."),
        "contact": MessageLookupByLibrary.simpleMessage("Contatto"),
        "contactPrefix": m11,
        "createButton": MessageLookupByLibrary.simpleMessage("Crea"),
        "createProxy": MessageLookupByLibrary.simpleMessage("Nuovo Proxy"),
        "disableChatOptimizations":
            MessageLookupByLibrary.simpleMessage("Disabilita pulizia chat"),
        "disableChatOptimizationsDesc": MessageLookupByLibrary.simpleMessage(
            "Non pulire i messaggi invisibili nelle chat"),
        "disableMicroAvatars":
            MessageLookupByLibrary.simpleMessage("Disabilita avatar piccoli"),
        "disableMicroAvatarsDesc": MessageLookupByLibrary.simpleMessage(
            "Quelli vicino ai nomi utente"),
        "disableProfileAvatars":
            MessageLookupByLibrary.simpleMessage("Disabilita avatar"),
        "disableProfileAvatarsDesc":
            MessageLookupByLibrary.simpleMessage("Mostrati nelle liste chat"),
        "document": MessageLookupByLibrary.simpleMessage("Documento"),
        "documentPrefix": m12,
        "doneButton": MessageLookupByLibrary.simpleMessage("Fatto"),
        "draftPrefix": MessageLookupByLibrary.simpleMessage("Bozza: "),
        "editProxy": MessageLookupByLibrary.simpleMessage("Modifica Proxy"),
        "editedForumTopic": m13,
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Digita Password"),
        "error": MessageLookupByLibrary.simpleMessage("Errore"),
        "expiredPhoto": MessageLookupByLibrary.simpleMessage("Foto scaduta"),
        "expiredVideo": MessageLookupByLibrary.simpleMessage("Video scaduto"),
        "expiredVideoNote":
            MessageLookupByLibrary.simpleMessage("Messaggio video scaduto"),
        "expiredVoiceNote":
            MessageLookupByLibrary.simpleMessage("Messaggio vocale scaduto"),
        "firstSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Alcune Impostazioni"),
        "folderIsEmpty":
            MessageLookupByLibrary.simpleMessage("La cartella è vuota"),
        "forwardedMessagesPlural": m14,
        "getStarted": MessageLookupByLibrary.simpleMessage("Iniziare"),
        "gif": MessageLookupByLibrary.simpleMessage("GIF"),
        "giveaway": MessageLookupByLibrary.simpleMessage("Giveaway"),
        "giveawayFinished":
            MessageLookupByLibrary.simpleMessage("Giveaway terminato"),
        "giveawayWinners":
            MessageLookupByLibrary.simpleMessage("Vincitori del Giveaway"),
        "groupStickers": MessageLookupByLibrary.simpleMessage("Adesivi gruppo"),
        "groupWasCreated":
            MessageLookupByLibrary.simpleMessage("Il gruppo è stato creato"),
        "handygram": MessageLookupByLibrary.simpleMessage("HandyGram"),
        "hasJoinedTelegram":
            MessageLookupByLibrary.simpleMessage("è ora su Telegram!"),
        "hiddenContent":
            MessageLookupByLibrary.simpleMessage("Contenuto nascosto"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Password errata"),
        "interface": MessageLookupByLibrary.simpleMessage("Interfaccia"),
        "invoice": MessageLookupByLibrary.simpleMessage("Fattura"),
        "loadingMessage":
            MessageLookupByLibrary.simpleMessage("Caricamento messaggio..."),
        "location": MessageLookupByLibrary.simpleMessage("Posizione"),
        "login": MessageLookupByLibrary.simpleMessage("Accedi"),
        "logout": MessageLookupByLibrary.simpleMessage("Esci"),
        "messageContentUnsupported": MessageLookupByLibrary.simpleMessage(
            "Tipo messaggio non supportato:\n"),
        "messageTtlChanged": MessageLookupByLibrary.simpleMessage(
            "Timer di eliminazione automatica modificato"),
        "messageWasPinned": MessageLookupByLibrary.simpleMessage(
            "Il messaggio è stato fissato"),
        "messages": MessageLookupByLibrary.simpleMessage("Messaggi"),
        "messaging": MessageLookupByLibrary.simpleMessage("Messaggistica"),
        "newForumTopic": m15,
        "newVideoChat":
            MessageLookupByLibrary.simpleMessage("Nuova chat video"),
        "nextButton": MessageLookupByLibrary.simpleMessage("Prossimo"),
        "notificationCalls": m16,
        "notificationMentions": m17,
        "notificationMessages": m18,
        "notificationNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Nuova chat segreta creata"),
        "notificationSingleTitleCall":
            MessageLookupByLibrary.simpleMessage("Chiamata"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Chat segreta"),
        "notificationSingleTitleScheduledMessage":
            MessageLookupByLibrary.simpleMessage("Messaggio programmato"),
        "notificationTextCall": m2,
        "notificationTextSecretChat": m3,
        "notifications": MessageLookupByLibrary.simpleMessage("Notifiche"),
        "notificationsChannelChannels":
            MessageLookupByLibrary.simpleMessage("Canali"),
        "notificationsChannelGroups":
            MessageLookupByLibrary.simpleMessage("Gruppi"),
        "notificationsChannelMentions":
            MessageLookupByLibrary.simpleMessage("Menzioni"),
        "notificationsChannelMentionsDesc":
            MessageLookupByLibrary.simpleMessage(
                "Tutte le tue menzioni dalle chat di gruppo"),
        "notificationsChannelMessages":
            MessageLookupByLibrary.simpleMessage("Messaggi"),
        "notificationsChannelMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "Tutti i nuovi messaggi nelle chat in cui hai abilitato le notifiche (sia di gruppo che personali)"),
        "notificationsChannelOther":
            MessageLookupByLibrary.simpleMessage("Altro"),
        "notificationsChannelOtherDesc": MessageLookupByLibrary.simpleMessage(
            "Tutte le notifiche che non contengono messaggi o menzioni"),
        "notificationsChannelPrivateChats":
            MessageLookupByLibrary.simpleMessage("Chat private"),
        "officialChannel":
            MessageLookupByLibrary.simpleMessage("Canale ufficiale"),
        "optimizeStorageUsage":
            MessageLookupByLibrary.simpleMessage("Ottimizza memoria"),
        "optmizing": MessageLookupByLibrary.simpleMessage("Ottimizzazione..."),
        "paidMedia": MessageLookupByLibrary.simpleMessage("Media a pagamento"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "paymentRefunded":
            MessageLookupByLibrary.simpleMessage("Pagamento rimborsato"),
        "paymentSuccessful": MessageLookupByLibrary.simpleMessage(
            "Il pagamento è avvenuto con successo"),
        "photo": MessageLookupByLibrary.simpleMessage("Foto"),
        "photoPrefix": m19,
        "poll": MessageLookupByLibrary.simpleMessage("Sondaggio"),
        "pollPrefix": m20,
        "poweredByTdlib": m21,
        "premiumGiftCode":
            MessageLookupByLibrary.simpleMessage("Codice regalo Premium"),
        "premiumWithMonthsCount": m22,
        "prerenderAllMessages": MessageLookupByLibrary.simpleMessage(
            "Pre-renderizza tutti i messaggi"),
        "prerenderAllMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "Può aiutare con il problema dei salti nella lista messaggi"),
        "proximityAlert":
            MessageLookupByLibrary.simpleMessage("Avviso di prossimità"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Aggiungi proxy"),
        "proxyConnectionDisconnected":
            MessageLookupByLibrary.simpleMessage("Disconnesso"),
        "proxyConnectionLastUsedDate": m4,
        "proxyInsecure": MessageLookupByLibrary.simpleMessage("Non sicuro"),
        "proxyPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "proxyPort": MessageLookupByLibrary.simpleMessage("Porta Proxy"),
        "proxySecret": MessageLookupByLibrary.simpleMessage("Segreto"),
        "proxyServer": MessageLookupByLibrary.simpleMessage("Server Proxy"),
        "proxySettingsButton":
            MessageLookupByLibrary.simpleMessage("Impostazioni Proxy"),
        "proxySettingsMainToggle":
            MessageLookupByLibrary.simpleMessage("Proxy"),
        "proxySettingsTitle":
            MessageLookupByLibrary.simpleMessage("Impostazioni Proxy"),
        "proxyType": MessageLookupByLibrary.simpleMessage("Tipo Proxy"),
        "proxyTypeHTTP": MessageLookupByLibrary.simpleMessage("HTTP"),
        "proxyTypeMTProto": MessageLookupByLibrary.simpleMessage("MTProto"),
        "proxyTypePickerTitle":
            MessageLookupByLibrary.simpleMessage("Seleziona tipo di Proxy"),
        "proxyTypeSOCKS5": MessageLookupByLibrary.simpleMessage("SOCKS5"),
        "proxyUser": MessageLookupByLibrary.simpleMessage("Nome utente"),
        "qrInstruction": MessageLookupByLibrary.simpleMessage(
            "1. Apri Telegram sul tuo telefono\n\n2. Vai in Impostazioni > Dispositivi > Collega Dispositivo Desktop\n\n3. Scansiona questa immagine per accedere"),
        "qrScanTitle":
            MessageLookupByLibrary.simpleMessage("Scansiona per accedere"),
        "recentStickers":
            MessageLookupByLibrary.simpleMessage("Adesivi recenti"),
        "removeButton": MessageLookupByLibrary.simpleMessage("Rimuovi"),
        "roleDesigner": MessageLookupByLibrary.simpleMessage("UX/UI designer"),
        "roleFounder":
            MessageLookupByLibrary.simpleMessage("Fondatore e sviluppatore"),
        "runInBackground": MessageLookupByLibrary.simpleMessage("Notifiche"),
        "runInBackgroundDesc":
            MessageLookupByLibrary.simpleMessage("Abilita servizio Firebase"),
        "scheduledVideoChat":
            MessageLookupByLibrary.simpleMessage("Chat video programmata"),
        "scoredSomeScoreInGame": m23,
        "screenshotWasTaken":
            MessageLookupByLibrary.simpleMessage("Schermata catturata"),
        "secondsCountPlural": m24,
        "secretChats": MessageLookupByLibrary.simpleMessage("Chat segrete"),
        "sectionAppearance": MessageLookupByLibrary.simpleMessage("Aspetto"),
        "sectionPerformance":
            MessageLookupByLibrary.simpleMessage("Prestazioni"),
        "selectShapeTitle":
            MessageLookupByLibrary.simpleMessage("Seleziona forma orologio"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Seleziona tema"),
        "send": MessageLookupByLibrary.simpleMessage("Invia"),
        "sendFile": MessageLookupByLibrary.simpleMessage("Invia file"),
        "sendMediaGIFTitle":
            MessageLookupByLibrary.simpleMessage("Seleziona una GIF"),
        "sendMediaPhotoTitle":
            MessageLookupByLibrary.simpleMessage("Seleziona foto"),
        "sendMediaStickerTitle":
            MessageLookupByLibrary.simpleMessage("Seleziona adesivo"),
        "sendTextMessageTitle":
            MessageLookupByLibrary.simpleMessage("Scrivi un messaggio"),
        "sendVoiceMessageTitle":
            MessageLookupByLibrary.simpleMessage("Registra nota vocale"),
        "settings": MessageLookupByLibrary.simpleMessage("Impostazioni"),
        "sharedUsers": MessageLookupByLibrary.simpleMessage("Utenti condivisi"),
        "someone": MessageLookupByLibrary.simpleMessage("Qualcuno"),
        "someoneJoinedByRequest": MessageLookupByLibrary.simpleMessage(
            "Qualcuno è stato approvato per entrare"),
        "someoneJoinedViaLink": MessageLookupByLibrary.simpleMessage(
            "Qualcuno si è unito tramite link"),
        "something": MessageLookupByLibrary.simpleMessage("Qualcosa"),
        "starsWithCount": m25,
        "stickerPlainTexted": m26,
        "stickersCountInRow":
            MessageLookupByLibrary.simpleMessage("Conteggio media per riga"),
        "stickersCountInRowDesc": MessageLookupByLibrary.simpleMessage(
            "Utilizzato nei selettori multimediali"),
        "storage": MessageLookupByLibrary.simpleMessage("Memoria"),
        "storageFreeSpace":
            MessageLookupByLibrary.simpleMessage("Spazio libero"),
        "storageHandyGramData":
            MessageLookupByLibrary.simpleMessage("Dati HandyGram"),
        "storageNonHandyGram":
            MessageLookupByLibrary.simpleMessage("Altre app"),
        "story": MessageLookupByLibrary.simpleMessage("Storia"),
        "storyWithDuration": m27,
        "suggestedAvatar":
            MessageLookupByLibrary.simpleMessage("Avatar suggerito"),
        "templateTitleRepliesBot":
            MessageLookupByLibrary.simpleMessage("Risposte"),
        "templateTitleSavedMessages":
            MessageLookupByLibrary.simpleMessage("Messaggi salvati"),
        "tgPassport": MessageLookupByLibrary.simpleMessage("Telegram Passport"),
        "titleWasChanged":
            MessageLookupByLibrary.simpleMessage("Il titolo è cambiato"),
        "topicWasClosed":
            MessageLookupByLibrary.simpleMessage("Argomento chiuso"),
        "topicWasHidden":
            MessageLookupByLibrary.simpleMessage("Argomento nascosto"),
        "topicWasOpened":
            MessageLookupByLibrary.simpleMessage("Argomento aperto"),
        "topicWasShown":
            MessageLookupByLibrary.simpleMessage("Argomento mostrato"),
        "uiScale": MessageLookupByLibrary.simpleMessage("Scala interfaccia"),
        "unsupported": MessageLookupByLibrary.simpleMessage("Non supportato"),
        "upgradedToSupergroup":
            MessageLookupByLibrary.simpleMessage("Aggiornato a supergruppo"),
        "userHasLeft": m5,
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "videoCallWithTime": m6,
        "videoChatInvitation":
            MessageLookupByLibrary.simpleMessage("Invito alla chat video"),
        "videoChatWithTime": m28,
        "videoNote": MessageLookupByLibrary.simpleMessage("Nota video"),
        "videoNoteWithTime": m29,
        "videoPrefix": m30,
        "voiceNote": MessageLookupByLibrary.simpleMessage("Nota vocale"),
        "voiceNoteWithTime": m31,
        "watchShape":
            MessageLookupByLibrary.simpleMessage("Forma schermo orologio"),
        "whereToScan":
            MessageLookupByLibrary.simpleMessage("Dove scansionare?"),
        "you": MessageLookupByLibrary.simpleMessage("Tu"),
        "youHaveBoostedChat":
            MessageLookupByLibrary.simpleMessage("Hai potenziato la chat")
      };
}
