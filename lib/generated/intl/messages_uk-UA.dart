// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk_UA locale. All the
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
  String get localeName => 'uk_UA';

  static String m0(time) => "Виклик (${time})";

  static String m1(user) => "${user} та інші були додані";

  static String m13(name) => "Змінено гілку \"${name}\"";

  static String m15(name) => "Нова гілка \"${name}\"";

  static String m2(name) => "${name} дзвонить вам...";

  static String m3(name) => "${name} створив скритий чат з вами!";

  static String m4(date) => "Останнє використання: ${date}";

  static String m23(score) => "Набрано ${score} у грі";

  static String m5(user) => "${user} вийшов";

  static String m6(time) => "Відеодзвінок (${time})";

  static String m28(time) => "Відео чат (${time})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "audio": MessageLookupByLibrary.simpleMessage("Звук"),
        "avatarWasChanged":
            MessageLookupByLibrary.simpleMessage("Аватар був змінений"),
        "avatarWasDeleted":
            MessageLookupByLibrary.simpleMessage("Аватар був видалений"),
        "bgWasChanged": MessageLookupByLibrary.simpleMessage("Фон змінено"),
        "botWriteAccessAllowed": MessageLookupByLibrary.simpleMessage(
            "Боту було дозволено розмовляти"),
        "callWithTime": m0,
        "chatMembersWereAdded": m1,
        "chatWasShared":
            MessageLookupByLibrary.simpleMessage("Чат було поширено"),
        "closeButton": MessageLookupByLibrary.simpleMessage("Закрити"),
        "connectionConnected":
            MessageLookupByLibrary.simpleMessage("Підключено"),
        "connectionConnecting":
            MessageLookupByLibrary.simpleMessage("Підключення..."),
        "connectionConnectingToProxy":
            MessageLookupByLibrary.simpleMessage("Підключення до Проксі..."),
        "connectionWaitingForNetwork":
            MessageLookupByLibrary.simpleMessage("Очікування мережі..."),
        "createButton": MessageLookupByLibrary.simpleMessage("Створити"),
        "createProxy": MessageLookupByLibrary.simpleMessage("Новий проксі"),
        "document": MessageLookupByLibrary.simpleMessage("Документ"),
        "doneButton": MessageLookupByLibrary.simpleMessage("Готово"),
        "editProxy": MessageLookupByLibrary.simpleMessage("Редагувати проксі"),
        "editedForumTopic": m13,
        "enterPassword": MessageLookupByLibrary.simpleMessage("Введіть пароль"),
        "expiredPhoto": MessageLookupByLibrary.simpleMessage("Застаріле фото"),
        "expiredVideo": MessageLookupByLibrary.simpleMessage("Застаріле відео"),
        "expiredVideoNote":
            MessageLookupByLibrary.simpleMessage("Застаріле відеоповідомлення"),
        "expiredVoiceNote": MessageLookupByLibrary.simpleMessage(
            "Застаріле голосове повідомлення"),
        "firstSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Деякі налаштування"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Почати роботу"),
        "gif": MessageLookupByLibrary.simpleMessage("GIF"),
        "groupWasCreated":
            MessageLookupByLibrary.simpleMessage("Групу створено"),
        "handygram": MessageLookupByLibrary.simpleMessage("HandyGram"),
        "hasJoinedTelegram":
            MessageLookupByLibrary.simpleMessage("приєднався до Telegram!"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Невірний пароль"),
        "location": MessageLookupByLibrary.simpleMessage("Місцезнаходження"),
        "login": MessageLookupByLibrary.simpleMessage("Вхід"),
        "messageTtlChanged": MessageLookupByLibrary.simpleMessage(
            "Таймер авто-видалення змінено"),
        "messageWasPinned":
            MessageLookupByLibrary.simpleMessage("Повідомлення закріплено"),
        "newForumTopic": m15,
        "nextButton": MessageLookupByLibrary.simpleMessage("Далі"),
        "notificationSingleTitleCall":
            MessageLookupByLibrary.simpleMessage("Дзвінок"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Скритий чат"),
        "notificationSingleTitleScheduledMessage":
            MessageLookupByLibrary.simpleMessage("Запл. меседж"),
        "notificationTextCall": m2,
        "notificationTextSecretChat": m3,
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Оплата пройшла успішно"),
        "photo": MessageLookupByLibrary.simpleMessage("Фото"),
        "poll": MessageLookupByLibrary.simpleMessage("Опитування"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Додати проксі"),
        "proxyConnectionDisconnected":
            MessageLookupByLibrary.simpleMessage("Відключено"),
        "proxyConnectionLastUsedDate": m4,
        "proxyInsecure": MessageLookupByLibrary.simpleMessage("Ненадійний"),
        "proxyPassword": MessageLookupByLibrary.simpleMessage("Пароль"),
        "proxyPort": MessageLookupByLibrary.simpleMessage("Порт проксі"),
        "proxySecret": MessageLookupByLibrary.simpleMessage("Секрет"),
        "proxyServer": MessageLookupByLibrary.simpleMessage("Проксі-сервер"),
        "proxySettingsButton":
            MessageLookupByLibrary.simpleMessage("Налаштування проксі"),
        "proxySettingsMainToggle":
            MessageLookupByLibrary.simpleMessage("Проксі"),
        "proxySettingsTitle":
            MessageLookupByLibrary.simpleMessage("Налаштування проксі"),
        "proxyType": MessageLookupByLibrary.simpleMessage("Тип проксі"),
        "proxyTypeHTTP": MessageLookupByLibrary.simpleMessage("HTTP"),
        "proxyTypeMTProto": MessageLookupByLibrary.simpleMessage("MTProto"),
        "proxyTypePickerTitle":
            MessageLookupByLibrary.simpleMessage("Вибрати тип проксі"),
        "proxyTypeSOCKS5": MessageLookupByLibrary.simpleMessage("SOCKS5"),
        "proxyUser": MessageLookupByLibrary.simpleMessage("Ім\'я користувача"),
        "qrInstruction": MessageLookupByLibrary.simpleMessage(
            "1. Відкрийте Telegram на вашому телефоні\n2. Перейдіть у налаштування > Пристрої > З\'єднати з комп\'ютером\n3. Відскануйте це зображення щоб увійти"),
        "qrScanTitle":
            MessageLookupByLibrary.simpleMessage("Сканувати для входу"),
        "removeButton": MessageLookupByLibrary.simpleMessage("Прибрати"),
        "scoredSomeScoreInGame": m23,
        "selectShapeTitle":
            MessageLookupByLibrary.simpleMessage("Виберіть форму годинника"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Виберіть тему"),
        "someoneJoinedByRequest": MessageLookupByLibrary.simpleMessage(
            "Хтось був схвалений для приєднання"),
        "someoneJoinedViaLink": MessageLookupByLibrary.simpleMessage(
            "Хтось приєднався за посиланням"),
        "titleWasChanged":
            MessageLookupByLibrary.simpleMessage("Заголовок було змінено"),
        "topicWasClosed": MessageLookupByLibrary.simpleMessage("Гілку закрито"),
        "topicWasHidden":
            MessageLookupByLibrary.simpleMessage("Гілку приховано"),
        "topicWasOpened":
            MessageLookupByLibrary.simpleMessage("Гілку відкрито"),
        "topicWasShown": MessageLookupByLibrary.simpleMessage("Гілку показано"),
        "upgradedToSupergroup":
            MessageLookupByLibrary.simpleMessage("Підвищено до супергрупи"),
        "userHasLeft": m5,
        "video": MessageLookupByLibrary.simpleMessage("Відео"),
        "videoCallWithTime": m6,
        "videoChatInvitation":
            MessageLookupByLibrary.simpleMessage("Запрошення на відеочат"),
        "videoChatWithTime": m28,
        "whereToScan": MessageLookupByLibrary.simpleMessage("Де сканувати?"),
        "youHaveBoostedChat":
            MessageLookupByLibrary.simpleMessage("Ви забустили чат")
      };
}
