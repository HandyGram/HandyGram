// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es_ES locale. All the
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
  String get localeName => 'es_ES';

  static String m7(version, codename) => "Versión ${version} (${codename})";

  static String m8(title) => "Audio: ${title}";

  static String m0(time) => "Llamar (${time})";

  static String m9(error) => "Error al cargar chat: ${error}";

  static String m1(user) => "${user} y otros fueron añadidos";

  static String m10(id) => "Mensaje ${id} no encontrado";

  static String m11(name) => "Contacto: ${name}";

  static String m12(caption) => "[Documento] ${caption}";

  static String m13(name) => "Tema \"${name}\" editado";

  static String m14(count) =>
      "¡¡${count} ha reenviado ${Intl.plural(count, one: 'mensaje', other: '¡mensajes')}";

  static String m15(name) => "Nuevo tema \"${name}\"";

  static String m16(count) =>
      "${count} ${Intl.plural(count, one: 'llamada', other: 'llamadas')} entrante";

  static String m17(count) =>
      "${count} ${Intl.plural(count, one: 'mencion', other: 'menciones')} sin leer";

  static String m18(count) =>
      "${count} ${Intl.plural(count, one: 'mensaje', other: 'mensajes')} sin leer";

  static String m2(name) => "${name} te está llamando...";

  static String m3(name) => "¡${name} acaba de crear un chat secreto contigo!";

  static String m19(caption) => "[Foto] ${caption}";

  static String m20(caption) => "[Encuesta] ${caption}";

  static String m21(version) => "Powered by TDLib ${version}";

  static String m22(count) =>
      "Premium (${count} ${Intl.plural(count, one: 'mes', other: 'meses')})";

  static String m4(date) => "Último uso: ${date}";

  static String m23(score) => "Anotó ${score} en la partida";

  static String m24(count) =>
      "${Intl.plural(count, one: '# segundo', other: '# segundos')}";

  static String m25(count) =>
      "${count} Telegram ${Intl.plural(count, one: 'Estrella', other: 'Estrellas')}";

  static String m26(emoji) => "Pegatina ${emoji}";

  static String m27(time) => "Historia (${time})";

  static String m5(user) => "${user} salió";

  static String m6(time) => "Videollamada (${time})";

  static String m28(time) => "Videollamada (${time})";

  static String m29(time) => "Nota de vídeo (${time})";

  static String m30(caption) => "[Vídeo] ${caption}";

  static String m31(time) => "Nota de voz (${time})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("Acerca de app"),
        "accounts": MessageLookupByLibrary.simpleMessage("Cuentas"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Añadir cuenta"),
        "album": MessageLookupByLibrary.simpleMessage("Álbum"),
        "appVersion": m7,
        "audio": MessageLookupByLibrary.simpleMessage("Audio"),
        "audioPrefix": m8,
        "avatarWasChanged":
            MessageLookupByLibrary.simpleMessage("Avatar cambiado"),
        "avatarWasDeleted":
            MessageLookupByLibrary.simpleMessage("Avatar eliminado"),
        "bgWasChanged": MessageLookupByLibrary.simpleMessage("Fondo cambiado"),
        "botWriteAccessAllowed": MessageLookupByLibrary.simpleMessage(
            "Se ha permitido al bot escribir mensajes"),
        "callWithTime": m0,
        "calls": MessageLookupByLibrary.simpleMessage("Llamadas"),
        "changedTheme": MessageLookupByLibrary.simpleMessage("Cambiar tema"),
        "channelDescription":
            MessageLookupByLibrary.simpleMessage("Noticias y actualizaciones"),
        "chatBlocLoadingError": m9,
        "chatInfoBot": MessageLookupByLibrary.simpleMessage("Info. del bot"),
        "chatInfoChannel":
            MessageLookupByLibrary.simpleMessage("Info. del canal"),
        "chatInfoGroup":
            MessageLookupByLibrary.simpleMessage("Info. del grupo"),
        "chatInfoPersonal":
            MessageLookupByLibrary.simpleMessage("Info. del perfil"),
        "chatListHeaderArchive":
            MessageLookupByLibrary.simpleMessage("Archivo"),
        "chatListHeaderFolder": MessageLookupByLibrary.simpleMessage("Carpeta"),
        "chatListHeaderMain":
            MessageLookupByLibrary.simpleMessage("Todos los chats"),
        "chatMembersWereAdded": m1,
        "chatViewMessageNotFoundError": m10,
        "chatWasShared":
            MessageLookupByLibrary.simpleMessage("Chat compartido"),
        "closeButton": MessageLookupByLibrary.simpleMessage("Cerrar"),
        "colorScheme": MessageLookupByLibrary.simpleMessage("Apariencia"),
        "connectionConnected":
            MessageLookupByLibrary.simpleMessage("Conectado"),
        "connectionConnecting":
            MessageLookupByLibrary.simpleMessage("Conectando..."),
        "connectionConnectingToProxy":
            MessageLookupByLibrary.simpleMessage("Conectando al proxy..."),
        "connectionUpdating":
            MessageLookupByLibrary.simpleMessage("Actualizando..."),
        "connectionWaitingForNetwork":
            MessageLookupByLibrary.simpleMessage("Esperando conexión..."),
        "contact": MessageLookupByLibrary.simpleMessage("Contacto"),
        "contactPrefix": m11,
        "createButton": MessageLookupByLibrary.simpleMessage("Crear"),
        "createProxy": MessageLookupByLibrary.simpleMessage("Nuevo Proxy"),
        "disableChatOptimizations": MessageLookupByLibrary.simpleMessage(
            "Deshabilitar limpieza de chat"),
        "disableChatOptimizationsDesc": MessageLookupByLibrary.simpleMessage(
            "No limpiar mensajes invisibles en chats"),
        "disableMicroAvatars": MessageLookupByLibrary.simpleMessage(
            "Deshabilitar avatares pequeños"),
        "disableMicroAvatarsDesc": MessageLookupByLibrary.simpleMessage(
            "Aquellos al lado del usuario"),
        "disableProfileAvatars":
            MessageLookupByLibrary.simpleMessage("Deshabilitar avatares"),
        "disableProfileAvatarsDesc":
            MessageLookupByLibrary.simpleMessage("Mostrados en lista de chats"),
        "document": MessageLookupByLibrary.simpleMessage("Documento"),
        "documentPrefix": m12,
        "doneButton": MessageLookupByLibrary.simpleMessage("Hecho"),
        "draftPrefix": MessageLookupByLibrary.simpleMessage("Borrador: "),
        "editProxy": MessageLookupByLibrary.simpleMessage("Editar proxy"),
        "editedForumTopic": m13,
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Introducir Contraseña"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "expiredPhoto": MessageLookupByLibrary.simpleMessage("Foto expirada"),
        "expiredVideo": MessageLookupByLibrary.simpleMessage("Vídeo expirado"),
        "expiredVideoNote":
            MessageLookupByLibrary.simpleMessage("Mensaje de vídeo expirado"),
        "expiredVoiceNote":
            MessageLookupByLibrary.simpleMessage("Mensaje de voz expirado"),
        "firstSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Algunos ajustes"),
        "folderIsEmpty": MessageLookupByLibrary.simpleMessage("Carpeta vacía"),
        "forwardedMessagesPlural": m14,
        "getStarted": MessageLookupByLibrary.simpleMessage("Comenzar"),
        "gif": MessageLookupByLibrary.simpleMessage("GIF"),
        "giveaway": MessageLookupByLibrary.simpleMessage("Sorteo"),
        "giveawayFinished":
            MessageLookupByLibrary.simpleMessage("Sorteo terminado"),
        "giveawayWinners":
            MessageLookupByLibrary.simpleMessage("Ganadores del sorteo"),
        "groupStickers":
            MessageLookupByLibrary.simpleMessage("Pegatinas del grupo"),
        "groupWasCreated": MessageLookupByLibrary.simpleMessage("Grupo creado"),
        "handygram": MessageLookupByLibrary.simpleMessage("HandyGram"),
        "hasJoinedTelegram":
            MessageLookupByLibrary.simpleMessage("se ha unido a Telegram!"),
        "hiddenContent":
            MessageLookupByLibrary.simpleMessage("Contenido oculto"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña incorrecta"),
        "interface": MessageLookupByLibrary.simpleMessage("Interfaz"),
        "invoice": MessageLookupByLibrary.simpleMessage("Factura"),
        "loadingMessage":
            MessageLookupByLibrary.simpleMessage("Cargando mensaje..."),
        "location": MessageLookupByLibrary.simpleMessage("Ubicación"),
        "login": MessageLookupByLibrary.simpleMessage("Iniciar sesión"),
        "logout": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "messageContentUnsupported": MessageLookupByLibrary.simpleMessage(
            "Tipo mensaje no soportado:\n"),
        "messageTtlChanged": MessageLookupByLibrary.simpleMessage(
            "Temporizador de auto-eliminación cambiado"),
        "messageWasPinned":
            MessageLookupByLibrary.simpleMessage("Mensaje fijado"),
        "messages": MessageLookupByLibrary.simpleMessage("Mensajes"),
        "messaging": MessageLookupByLibrary.simpleMessage("Mensajería"),
        "newForumTopic": m15,
        "newVideoChat":
            MessageLookupByLibrary.simpleMessage("Nuevo video chat"),
        "nextButton": MessageLookupByLibrary.simpleMessage("Siguiente"),
        "notificationCalls": m16,
        "notificationMentions": m17,
        "notificationMessages": m18,
        "notificationNewSecretChat": MessageLookupByLibrary.simpleMessage(
            "Se ha creado un nuevo chat secreto"),
        "notificationSingleTitleCall":
            MessageLookupByLibrary.simpleMessage("Llamada"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Chat secreto"),
        "notificationSingleTitleScheduledMessage":
            MessageLookupByLibrary.simpleMessage("Mensajes programados"),
        "notificationTextCall": m2,
        "notificationTextSecretChat": m3,
        "notifications": MessageLookupByLibrary.simpleMessage("Notificaciones"),
        "notificationsChannelChannels":
            MessageLookupByLibrary.simpleMessage("Canales"),
        "notificationsChannelGroups":
            MessageLookupByLibrary.simpleMessage("Grupos"),
        "notificationsChannelMentions":
            MessageLookupByLibrary.simpleMessage("Menciones"),
        "notificationsChannelMentionsDesc":
            MessageLookupByLibrary.simpleMessage(
                "Todas tus menciones de chats de grupo"),
        "notificationsChannelMessages":
            MessageLookupByLibrary.simpleMessage("Mensajes"),
        "notificationsChannelMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "Todos los mensajes nuevos en los chats donde has activado las notificaciones (tanto de grupo como personal)"),
        "notificationsChannelOther":
            MessageLookupByLibrary.simpleMessage("Otro"),
        "notificationsChannelOtherDesc": MessageLookupByLibrary.simpleMessage(
            "Todas las notificaciones que no contienen mensajes o menciones"),
        "notificationsChannelPrivateChats":
            MessageLookupByLibrary.simpleMessage("Chats privados"),
        "officialChannel":
            MessageLookupByLibrary.simpleMessage("Canal oficial"),
        "optimizeStorageUsage":
            MessageLookupByLibrary.simpleMessage("Optimizar almacenamiento"),
        "optmizing": MessageLookupByLibrary.simpleMessage("Optimizando..."),
        "paidMedia": MessageLookupByLibrary.simpleMessage("Medio de pago"),
        "password": MessageLookupByLibrary.simpleMessage("Contraseña"),
        "paymentRefunded":
            MessageLookupByLibrary.simpleMessage("Pago reembolsado"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Pago exitoso"),
        "photo": MessageLookupByLibrary.simpleMessage("Foto"),
        "photoPrefix": m19,
        "poll": MessageLookupByLibrary.simpleMessage("Encuesta"),
        "pollPrefix": m20,
        "poweredByTdlib": m21,
        "premiumGiftCode":
            MessageLookupByLibrary.simpleMessage("Código de regalo Premium"),
        "premiumWithMonthsCount": m22,
        "prerenderAllMessages": MessageLookupByLibrary.simpleMessage(
            "Pre-renderizar todos los mensajes"),
        "prerenderAllMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "Puede contrarrestar desplazamiento de mensajes"),
        "proximityAlert":
            MessageLookupByLibrary.simpleMessage("Alerta de proximidad"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Añadir proxy"),
        "proxyConnectionDisconnected":
            MessageLookupByLibrary.simpleMessage("Desconectado"),
        "proxyConnectionLastUsedDate": m4,
        "proxyInsecure": MessageLookupByLibrary.simpleMessage("Inseguro"),
        "proxyPassword": MessageLookupByLibrary.simpleMessage("Contraseña"),
        "proxyPort": MessageLookupByLibrary.simpleMessage("Puerto proxy"),
        "proxySecret": MessageLookupByLibrary.simpleMessage("Secreto"),
        "proxyServer": MessageLookupByLibrary.simpleMessage("Servidor proxy"),
        "proxySettingsButton":
            MessageLookupByLibrary.simpleMessage("Ajustes de Proxy"),
        "proxySettingsMainToggle":
            MessageLookupByLibrary.simpleMessage("Proxy"),
        "proxySettingsTitle":
            MessageLookupByLibrary.simpleMessage("Ajustes de Proxy"),
        "proxyType": MessageLookupByLibrary.simpleMessage("Tipo proxy"),
        "proxyTypeHTTP": MessageLookupByLibrary.simpleMessage("HTTP"),
        "proxyTypeMTProto": MessageLookupByLibrary.simpleMessage("MTProto"),
        "proxyTypePickerTitle":
            MessageLookupByLibrary.simpleMessage("Seleccionar tipo proxy"),
        "proxyTypeSOCKS5": MessageLookupByLibrary.simpleMessage("SOCKS5"),
        "proxyUser": MessageLookupByLibrary.simpleMessage("Usuario"),
        "qrInstruction": MessageLookupByLibrary.simpleMessage(
            "1. Abra Telegram en su teléfono\n\n2. Vaya a Ajustes > Dispositivos > Link Desktop Device\n\n3. Escanee esta imagen para iniciar sesión"),
        "qrScanTitle":
            MessageLookupByLibrary.simpleMessage("Escanee para Entrar"),
        "recentStickers":
            MessageLookupByLibrary.simpleMessage("Pegatinas recientes"),
        "removeButton": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "roleDesigner": MessageLookupByLibrary.simpleMessage("Diseño UX/UI"),
        "roleFounder":
            MessageLookupByLibrary.simpleMessage("Fundador y desarrollador"),
        "runInBackground":
            MessageLookupByLibrary.simpleMessage("Notificaciones"),
        "runInBackgroundDesc":
            MessageLookupByLibrary.simpleMessage("Habilitar servicio Firebase"),
        "scheduledVideoChat":
            MessageLookupByLibrary.simpleMessage("Videochat programado"),
        "scoredSomeScoreInGame": m23,
        "screenshotWasTaken":
            MessageLookupByLibrary.simpleMessage("Captura tomada"),
        "secondsCountPlural": m24,
        "secretChats": MessageLookupByLibrary.simpleMessage("Chats secretos"),
        "sectionAppearance": MessageLookupByLibrary.simpleMessage("Apariencia"),
        "sectionPerformance":
            MessageLookupByLibrary.simpleMessage("Rendimiento"),
        "selectShapeTitle": MessageLookupByLibrary.simpleMessage(
            "Seleccione la Forma del Reloj"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Seleccionar tema"),
        "send": MessageLookupByLibrary.simpleMessage("Enviar"),
        "sendFile": MessageLookupByLibrary.simpleMessage("Enviar archivo"),
        "sendMediaGIFTitle": MessageLookupByLibrary.simpleMessage("Elegir GIF"),
        "sendMediaPhotoTitle":
            MessageLookupByLibrary.simpleMessage("Elegir foto"),
        "sendMediaStickerTitle":
            MessageLookupByLibrary.simpleMessage("Elegir pegatina"),
        "sendTextMessageTitle":
            MessageLookupByLibrary.simpleMessage("Escribir mensaje"),
        "sendVoiceMessageTitle":
            MessageLookupByLibrary.simpleMessage("Grabar nota de voz"),
        "settings": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "sharedUsers":
            MessageLookupByLibrary.simpleMessage("Usuarios compartidos"),
        "someone": MessageLookupByLibrary.simpleMessage("Alguien"),
        "someoneJoinedByRequest": MessageLookupByLibrary.simpleMessage(
            "Alguien ha sido aprobado para unirse"),
        "someoneJoinedViaLink": MessageLookupByLibrary.simpleMessage(
            "Alguien se unió a través del enlace"),
        "something": MessageLookupByLibrary.simpleMessage("Algo"),
        "starsWithCount": m25,
        "stickerPlainTexted": m26,
        "stickersCountInRow":
            MessageLookupByLibrary.simpleMessage("Num. medios por fila"),
        "stickersCountInRowDesc": MessageLookupByLibrary.simpleMessage(
            "Usado en el selector de medios"),
        "storage": MessageLookupByLibrary.simpleMessage("Almacenamiento"),
        "storageFreeSpace":
            MessageLookupByLibrary.simpleMessage("Espacio libre"),
        "storageHandyGramData":
            MessageLookupByLibrary.simpleMessage("Datos de HandyGram"),
        "storageNonHandyGram":
            MessageLookupByLibrary.simpleMessage("Otras apps"),
        "story": MessageLookupByLibrary.simpleMessage("Historia"),
        "storyWithDuration": m27,
        "suggestedAvatar":
            MessageLookupByLibrary.simpleMessage("Avatar sugerido"),
        "templateTitleRepliesBot":
            MessageLookupByLibrary.simpleMessage("Respuestas"),
        "templateTitleSavedMessages":
            MessageLookupByLibrary.simpleMessage("Mensajes guardados"),
        "tgPassport":
            MessageLookupByLibrary.simpleMessage("Pasaporte de Telegram"),
        "titleWasChanged":
            MessageLookupByLibrary.simpleMessage("Título cambiado"),
        "topicWasClosed": MessageLookupByLibrary.simpleMessage("Tema cerrado"),
        "topicWasHidden": MessageLookupByLibrary.simpleMessage("Tema ocultado"),
        "topicWasOpened": MessageLookupByLibrary.simpleMessage("Tema abierto"),
        "topicWasShown": MessageLookupByLibrary.simpleMessage("Tema mostrado"),
        "uiScale": MessageLookupByLibrary.simpleMessage("Escala de interfaz"),
        "unsupported": MessageLookupByLibrary.simpleMessage("No admitido"),
        "upgradedToSupergroup":
            MessageLookupByLibrary.simpleMessage("Actualizado a supergrupo"),
        "userHasLeft": m5,
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "videoCallWithTime": m6,
        "videoChatInvitation":
            MessageLookupByLibrary.simpleMessage("Invitación a vídeo chat"),
        "videoChatWithTime": m28,
        "videoNote": MessageLookupByLibrary.simpleMessage("Nota de vídeo"),
        "videoNoteWithTime": m29,
        "videoPrefix": m30,
        "voiceNote": MessageLookupByLibrary.simpleMessage("Nota de voz"),
        "voiceNoteWithTime": m31,
        "watchShape":
            MessageLookupByLibrary.simpleMessage("Forma pantalla reloj"),
        "whereToScan": MessageLookupByLibrary.simpleMessage("¿Dónde escanear?"),
        "you": MessageLookupByLibrary.simpleMessage("Tu"),
        "youHaveBoostedChat":
            MessageLookupByLibrary.simpleMessage("Has impulsado el chat")
      };
}
