// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a be_BY locale. All the
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
  String get localeName => 'be_BY';

  static String m0(time) => "Выклік (${time})";

  static String m1(user) => "Былі дададзеныя ${user} і іншыя";

  static String m2(name) => "Табе тэлефануе ${name}...";

  static String m3(name) => "${name} толькі што стварыў з вамі сакрэтны чат!";

  static String m4(date) => "Апошні раз выкарыстоўваўся: ${date}";

  static String m5(user) => "${user} выйшаў";

  static String m6(time) => "Відэазванок (${time})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "audio": MessageLookupByLibrary.simpleMessage("Аўдыё"),
        "avatarWasChanged":
            MessageLookupByLibrary.simpleMessage("Аватар быў зменены"),
        "avatarWasDeleted":
            MessageLookupByLibrary.simpleMessage("Аватар быў выдалены"),
        "bgWasChanged": MessageLookupByLibrary.simpleMessage("Фон быў зменены"),
        "botWriteAccessAllowed": MessageLookupByLibrary.simpleMessage(
            "Боту было дазволена пісаць паведамленні"),
        "callWithTime": m0,
        "chatMembersWereAdded": m1,
        "closeButton": MessageLookupByLibrary.simpleMessage("Закрыць"),
        "connectionConnected":
            MessageLookupByLibrary.simpleMessage("Падлучана"),
        "connectionConnecting":
            MessageLookupByLibrary.simpleMessage("Злучэнне..."),
        "connectionConnectingToProxy": MessageLookupByLibrary.simpleMessage(
            "Злучэнне з проксі-серверам..."),
        "connectionWaitingForNetwork":
            MessageLookupByLibrary.simpleMessage("Чаканне сеткі..."),
        "createButton": MessageLookupByLibrary.simpleMessage("Зрабіць"),
        "createProxy": MessageLookupByLibrary.simpleMessage("Новы проксі"),
        "doneButton": MessageLookupByLibrary.simpleMessage("Гатова"),
        "editProxy": MessageLookupByLibrary.simpleMessage("Рэдагаваць проксі"),
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Увядзіце пароль"),
        "firstSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Некаторыя налады"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Пачаць"),
        "gif": MessageLookupByLibrary.simpleMessage("Анімацыя"),
        "groupWasCreated":
            MessageLookupByLibrary.simpleMessage("Група была створана"),
        "handygram": MessageLookupByLibrary.simpleMessage("HandyGram"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Няправільны пароль"),
        "login": MessageLookupByLibrary.simpleMessage("Аўтарызавацца"),
        "messageTtlChanged": MessageLookupByLibrary.simpleMessage(
            "Зменены таймер аўтаматычнага выдалення"),
        "nextButton": MessageLookupByLibrary.simpleMessage("Далей"),
        "notificationSingleTitleCall":
            MessageLookupByLibrary.simpleMessage("Выклік"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Сакрэтны чат"),
        "notificationSingleTitleScheduledMessage":
            MessageLookupByLibrary.simpleMessage("Запланаванае паведамленне"),
        "notificationTextCall": m2,
        "notificationTextSecretChat": m3,
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Дадаць проксі"),
        "proxyConnectionDisconnected":
            MessageLookupByLibrary.simpleMessage("Адключана"),
        "proxyConnectionLastUsedDate": m4,
        "proxyInsecure": MessageLookupByLibrary.simpleMessage("Небяспечны"),
        "proxyPassword": MessageLookupByLibrary.simpleMessage("Пароль"),
        "proxyPort": MessageLookupByLibrary.simpleMessage("Порт для проксі"),
        "proxySecret": MessageLookupByLibrary.simpleMessage("Сакрэт"),
        "proxyServer": MessageLookupByLibrary.simpleMessage("Проксі-сервер"),
        "proxySettingsButton":
            MessageLookupByLibrary.simpleMessage("Налады проксі"),
        "proxySettingsMainToggle":
            MessageLookupByLibrary.simpleMessage("Проксі"),
        "proxySettingsTitle":
            MessageLookupByLibrary.simpleMessage("Налады проксі"),
        "proxyType": MessageLookupByLibrary.simpleMessage("Тып проксі"),
        "proxyTypeHTTP": MessageLookupByLibrary.simpleMessage("HTTP"),
        "proxyTypeMTProto": MessageLookupByLibrary.simpleMessage("MTProto"),
        "proxyTypePickerTitle":
            MessageLookupByLibrary.simpleMessage("Выберыце тып проксі-сервера"),
        "proxyTypeSOCKS5": MessageLookupByLibrary.simpleMessage("SOCKS5"),
        "proxyUser": MessageLookupByLibrary.simpleMessage("Імя карыстальніка"),
        "qrInstruction": MessageLookupByLibrary.simpleMessage(
            "1. Адкрыйце Telegram на сваім тэлефоне\n2. Перайдзіце ў \"Настройкі\" > \"Прылады\" > \"Прывязаць камп\'ютар\"\n3. Адскануйце гэты малюнак, каб увайсці ў сістэму"),
        "qrScanTitle":
            MessageLookupByLibrary.simpleMessage("Адскануйце для ўваходу"),
        "removeButton": MessageLookupByLibrary.simpleMessage("Выдаліць"),
        "selectShapeTitle":
            MessageLookupByLibrary.simpleMessage("Выберыце форму гадзін"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Выбраць тэму"),
        "someoneJoinedByRequest": MessageLookupByLibrary.simpleMessage(
            "Камусьці было дазволена далучыцца"),
        "someoneJoinedViaLink": MessageLookupByLibrary.simpleMessage(
            "Хтосьці далучыўся па спасылцы"),
        "titleWasChanged":
            MessageLookupByLibrary.simpleMessage("Назва была зменена"),
        "userHasLeft": m5,
        "videoCallWithTime": m6,
        "whereToScan": MessageLookupByLibrary.simpleMessage("Дзе сканаваць?"),
        "youHaveBoostedChat": MessageLookupByLibrary.simpleMessage(
            "Вы павысілі ўзровень зносін у чаце")
      };
}
