// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru_RU locale. All the
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
  String get localeName => 'ru_RU';

  static String m7(version, codename) => "Версия ${version} (${codename})";

  static String m8(title) => "Аудио: ${title}";

  static String m0(time) => "Звонок (${time})";

  static String m9(error) => "Ошибка загрузки чата: ${error}";

  static String m1(user) => "${user} и другие были добавлены";

  static String m10(id) => "Сообщение ${id} не найдено";

  static String m11(name) => "Контакт: ${name}";

  static String m15(name) => "Новая тема \"${name}\"";

  static String m18(count) =>
      "${count} непрочитанное ${Intl.plural(count, one: 'сообщение', few: 'сообщения', many: 'сообщения', other: 'сообщения')}";

  static String m2(name) => "${name} звонит вам...";

  static String m3(name) => "${name} только что создал секретный чат с вами!";

  static String m21(version) => "Работает на TDLib ${version}";

  static String m22(count) =>
      "Премиум (${count} ${Intl.plural(count, one: 'месяц', few: 'месяцев', many: 'месяцев', other: 'месяцев')})";

  static String m4(date) => "Последнее использование: ${date}";

  static String m23(score) => "Счёт ${score} в игре";

  static String m26(emoji) => "Стикер ${emoji}";

  static String m27(time) => "История (${time})";

  static String m5(user) => "${user} вышел";

  static String m6(time) => "Видеовызов (${time})";

  static String m28(time) => "Видео чат (${time})";

  static String m29(time) => "Видеосообщение (${time})";

  static String m31(time) => "Голосовое сообщение (${time})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("О приложении"),
        "accounts": MessageLookupByLibrary.simpleMessage("Аккаунты"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Добавить аккаунт"),
        "album": MessageLookupByLibrary.simpleMessage("Альбом"),
        "appVersion": m7,
        "audio": MessageLookupByLibrary.simpleMessage("Аудио"),
        "audioPrefix": m8,
        "avatarWasChanged":
            MessageLookupByLibrary.simpleMessage("Аватар был изменен"),
        "avatarWasDeleted":
            MessageLookupByLibrary.simpleMessage("Аватар удален"),
        "bgWasChanged": MessageLookupByLibrary.simpleMessage("Обои изменены"),
        "botWriteAccessAllowed":
            MessageLookupByLibrary.simpleMessage("Бот может писать сообщения"),
        "callWithTime": m0,
        "calls": MessageLookupByLibrary.simpleMessage("Звонки"),
        "changedTheme": MessageLookupByLibrary.simpleMessage("Сменить тему"),
        "channelDescription":
            MessageLookupByLibrary.simpleMessage("Новости и обновления"),
        "chatBlocLoadingError": m9,
        "chatInfoBot":
            MessageLookupByLibrary.simpleMessage("Информация о боте"),
        "chatInfoChannel":
            MessageLookupByLibrary.simpleMessage("Информация о канале"),
        "chatInfoGroup":
            MessageLookupByLibrary.simpleMessage("Информация о группе"),
        "chatInfoPersonal":
            MessageLookupByLibrary.simpleMessage("Данные профиля"),
        "chatListHeaderArchive": MessageLookupByLibrary.simpleMessage("Архив"),
        "chatListHeaderFolder": MessageLookupByLibrary.simpleMessage("Папка"),
        "chatListHeaderMain": MessageLookupByLibrary.simpleMessage("Все чаты"),
        "chatMembersWereAdded": m1,
        "chatViewMessageNotFoundError": m10,
        "closeButton": MessageLookupByLibrary.simpleMessage("Закрыть"),
        "colorScheme": MessageLookupByLibrary.simpleMessage("Внешний вид"),
        "connectionConnected":
            MessageLookupByLibrary.simpleMessage("Подключено"),
        "connectionConnecting":
            MessageLookupByLibrary.simpleMessage("Подключение..."),
        "connectionConnectingToProxy":
            MessageLookupByLibrary.simpleMessage("Подключение к прокси..."),
        "connectionUpdating":
            MessageLookupByLibrary.simpleMessage("Обновление..."),
        "connectionWaitingForNetwork":
            MessageLookupByLibrary.simpleMessage("Ожидание сети..."),
        "contact": MessageLookupByLibrary.simpleMessage("Контакт"),
        "contactPrefix": m11,
        "createButton": MessageLookupByLibrary.simpleMessage("Создать"),
        "createProxy": MessageLookupByLibrary.simpleMessage("Новый прокси"),
        "disableMicroAvatars":
            MessageLookupByLibrary.simpleMessage("Отключить аватары"),
        "disableProfileAvatars":
            MessageLookupByLibrary.simpleMessage("Отключить аватары"),
        "document": MessageLookupByLibrary.simpleMessage("Документ"),
        "doneButton": MessageLookupByLibrary.simpleMessage("Готово"),
        "draftPrefix": MessageLookupByLibrary.simpleMessage("Черновик: "),
        "editProxy": MessageLookupByLibrary.simpleMessage("Изменение прокси"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Введите пароль"),
        "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
        "expiredPhoto": MessageLookupByLibrary.simpleMessage("Фото просрочено"),
        "expiredVideo": MessageLookupByLibrary.simpleMessage("Истекшее видео"),
        "expiredVideoNote":
            MessageLookupByLibrary.simpleMessage("Истёкшее видеосообщение"),
        "expiredVoiceNote": MessageLookupByLibrary.simpleMessage(
            "Истёкшее голосовое сообщение"),
        "firstSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Некоторые настройки"),
        "folderIsEmpty": MessageLookupByLibrary.simpleMessage("Папка пустая"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Начать"),
        "gif": MessageLookupByLibrary.simpleMessage("GIF"),
        "giveaway": MessageLookupByLibrary.simpleMessage("Конкурс"),
        "groupStickers": MessageLookupByLibrary.simpleMessage("Стикеры группы"),
        "groupWasCreated":
            MessageLookupByLibrary.simpleMessage("Группа была создана"),
        "handygram": MessageLookupByLibrary.simpleMessage("HandyGram"),
        "hasJoinedTelegram":
            MessageLookupByLibrary.simpleMessage("присоединился к Telegram!"),
        "hiddenContent":
            MessageLookupByLibrary.simpleMessage("Скрытый контент"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Неверный пароль"),
        "interface": MessageLookupByLibrary.simpleMessage("Интерфейс"),
        "invoice": MessageLookupByLibrary.simpleMessage("Счет"),
        "loadingMessage":
            MessageLookupByLibrary.simpleMessage("Загрузка сообщения..."),
        "location": MessageLookupByLibrary.simpleMessage("Локация"),
        "login": MessageLookupByLibrary.simpleMessage("Вход"),
        "logout": MessageLookupByLibrary.simpleMessage("Выход"),
        "messageContentUnsupported": MessageLookupByLibrary.simpleMessage(
            "Неподдерживаемый тип сообщения:"),
        "messageTtlChanged": MessageLookupByLibrary.simpleMessage(
            "Таймер автоудаления был изменен"),
        "messageWasPinned":
            MessageLookupByLibrary.simpleMessage("Сообщение закреплено"),
        "messages": MessageLookupByLibrary.simpleMessage("Сообщения"),
        "messaging": MessageLookupByLibrary.simpleMessage("Общение"),
        "newForumTopic": m15,
        "newVideoChat": MessageLookupByLibrary.simpleMessage("Новый видео чат"),
        "nextButton": MessageLookupByLibrary.simpleMessage("Далее"),
        "notificationMessages": m18,
        "notificationNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Создан новый секретный чат"),
        "notificationSingleTitleCall":
            MessageLookupByLibrary.simpleMessage("Позвонить"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Секретный чат"),
        "notificationSingleTitleScheduledMessage":
            MessageLookupByLibrary.simpleMessage("Отложенное сообщение"),
        "notificationTextCall": m2,
        "notificationTextSecretChat": m3,
        "notifications": MessageLookupByLibrary.simpleMessage("Уведомления"),
        "notificationsChannelChannels":
            MessageLookupByLibrary.simpleMessage("Каналы"),
        "notificationsChannelGroups":
            MessageLookupByLibrary.simpleMessage("Группы"),
        "notificationsChannelMentions":
            MessageLookupByLibrary.simpleMessage("Ответы"),
        "notificationsChannelMentionsDesc":
            MessageLookupByLibrary.simpleMessage(
                "Все ваши упоминания из групповых чатов"),
        "notificationsChannelMessages":
            MessageLookupByLibrary.simpleMessage("Сообщения"),
        "notificationsChannelMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "Все новые сообщения в чатах, где вы включили уведомления (как групповые, так и персональные)"),
        "notificationsChannelOther":
            MessageLookupByLibrary.simpleMessage("Другое"),
        "notificationsChannelOtherDesc": MessageLookupByLibrary.simpleMessage(
            "Все уведомления, которые не содержат сообщений или упоминаний"),
        "notificationsChannelPrivateChats":
            MessageLookupByLibrary.simpleMessage("Диалоги"),
        "officialChannel":
            MessageLookupByLibrary.simpleMessage("Официальный канал"),
        "optimizeStorageUsage":
            MessageLookupByLibrary.simpleMessage("Оптимизировать хранилище"),
        "optmizing": MessageLookupByLibrary.simpleMessage("Оптимизация..."),
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "paymentRefunded":
            MessageLookupByLibrary.simpleMessage("Платёж возвращен"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Оплата прошла успешно"),
        "photo": MessageLookupByLibrary.simpleMessage("Фото"),
        "poll": MessageLookupByLibrary.simpleMessage("Голосование"),
        "poweredByTdlib": m21,
        "premiumGiftCode":
            MessageLookupByLibrary.simpleMessage("Подарочный код Премиум"),
        "premiumWithMonthsCount": m22,
        "prerenderAllMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "Может помочь с прыжком из списка сообщений"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Добавить прокси"),
        "proxyConnectionDisconnected":
            MessageLookupByLibrary.simpleMessage("Отключен"),
        "proxyConnectionLastUsedDate": m4,
        "proxyInsecure": MessageLookupByLibrary.simpleMessage("Небезопасный"),
        "proxyPassword": MessageLookupByLibrary.simpleMessage("Пароль"),
        "proxyPort": MessageLookupByLibrary.simpleMessage("Порт прокси"),
        "proxySecret": MessageLookupByLibrary.simpleMessage("Секрет"),
        "proxyServer": MessageLookupByLibrary.simpleMessage("Прокси-сервер"),
        "proxySettingsButton":
            MessageLookupByLibrary.simpleMessage("Настройки прокси"),
        "proxySettingsMainToggle":
            MessageLookupByLibrary.simpleMessage("Прокси"),
        "proxySettingsTitle":
            MessageLookupByLibrary.simpleMessage("Настройки прокси"),
        "proxyType": MessageLookupByLibrary.simpleMessage("Тип прокси"),
        "proxyTypeHTTP": MessageLookupByLibrary.simpleMessage("HTTP"),
        "proxyTypeMTProto": MessageLookupByLibrary.simpleMessage("MTProto"),
        "proxyTypePickerTitle":
            MessageLookupByLibrary.simpleMessage("Выберите тип прокси"),
        "proxyTypeSOCKS5": MessageLookupByLibrary.simpleMessage("SOCKS5"),
        "proxyUser": MessageLookupByLibrary.simpleMessage("Логин"),
        "qrInstruction": MessageLookupByLibrary.simpleMessage(
            "1. Откройте Telegram на вашем телефоне\n2. Перейдите в настройки > Устройства > Подключить устройство\n3. Отсканируйте это изображение для входа"),
        "qrScanTitle":
            MessageLookupByLibrary.simpleMessage("Сканируйте чтобы войти"),
        "recentStickers":
            MessageLookupByLibrary.simpleMessage("Недавние стикеры"),
        "removeButton": MessageLookupByLibrary.simpleMessage("Удалить"),
        "roleDesigner": MessageLookupByLibrary.simpleMessage("UX/UI дизайнер"),
        "roleFounder":
            MessageLookupByLibrary.simpleMessage("Основатель и разработчик"),
        "runInBackground": MessageLookupByLibrary.simpleMessage("Уведомления"),
        "scheduledVideoChat":
            MessageLookupByLibrary.simpleMessage("Запланированный видео чат"),
        "scoredSomeScoreInGame": m23,
        "screenshotWasTaken":
            MessageLookupByLibrary.simpleMessage("Скриншот сделан"),
        "secretChats": MessageLookupByLibrary.simpleMessage("Секретные чаты"),
        "sectionAppearance":
            MessageLookupByLibrary.simpleMessage("Внешний вид"),
        "sectionPerformance":
            MessageLookupByLibrary.simpleMessage("Производительность"),
        "selectShapeTitle":
            MessageLookupByLibrary.simpleMessage("Выберите форму часов"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Выберите тему"),
        "send": MessageLookupByLibrary.simpleMessage("Отправлено"),
        "sendFile": MessageLookupByLibrary.simpleMessage("Отправить файл"),
        "sendMediaGIFTitle":
            MessageLookupByLibrary.simpleMessage("Выбрать GIF"),
        "sendMediaPhotoTitle":
            MessageLookupByLibrary.simpleMessage("Выбрать фото"),
        "sendMediaStickerTitle":
            MessageLookupByLibrary.simpleMessage("Выбрать стикер"),
        "sendTextMessageTitle":
            MessageLookupByLibrary.simpleMessage("Написать сообщение"),
        "sendVoiceMessageTitle": MessageLookupByLibrary.simpleMessage(
            "Записать голосовое сообщение"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "sharedUsers":
            MessageLookupByLibrary.simpleMessage("Общие Пользователи"),
        "someoneJoinedByRequest": MessageLookupByLibrary.simpleMessage(
            "Кто-то был одобрен для присоединения"),
        "someoneJoinedViaLink": MessageLookupByLibrary.simpleMessage(
            "Кто-то присоединился по ссылке"),
        "stickerPlainTexted": m26,
        "storage": MessageLookupByLibrary.simpleMessage("Хранилище"),
        "storageFreeSpace":
            MessageLookupByLibrary.simpleMessage("Свободное место"),
        "storageHandyGramData":
            MessageLookupByLibrary.simpleMessage("Данные HandyGram"),
        "storageNonHandyGram":
            MessageLookupByLibrary.simpleMessage("Другие приложения"),
        "story": MessageLookupByLibrary.simpleMessage("История"),
        "storyWithDuration": m27,
        "suggestedAvatar":
            MessageLookupByLibrary.simpleMessage("Предложенный аватар"),
        "templateTitleRepliesBot":
            MessageLookupByLibrary.simpleMessage("Ответы"),
        "templateTitleSavedMessages":
            MessageLookupByLibrary.simpleMessage("Избранное"),
        "tgPassport": MessageLookupByLibrary.simpleMessage("Telegram Passport"),
        "titleWasChanged":
            MessageLookupByLibrary.simpleMessage("Название было изменено"),
        "topicWasClosed": MessageLookupByLibrary.simpleMessage("Тема закрыта"),
        "topicWasHidden": MessageLookupByLibrary.simpleMessage("Тема скрыта"),
        "topicWasOpened": MessageLookupByLibrary.simpleMessage("Тема открыта"),
        "uiScale": MessageLookupByLibrary.simpleMessage("Масштаб"),
        "unsupported":
            MessageLookupByLibrary.simpleMessage("Не поддерживается"),
        "upgradedToSupergroup":
            MessageLookupByLibrary.simpleMessage("Обновлено до супергруппы"),
        "userHasLeft": m5,
        "video": MessageLookupByLibrary.simpleMessage("Видео"),
        "videoCallWithTime": m6,
        "videoChatInvitation":
            MessageLookupByLibrary.simpleMessage("Приглашение в видеочат"),
        "videoChatWithTime": m28,
        "videoNote": MessageLookupByLibrary.simpleMessage("Видеосообщение"),
        "videoNoteWithTime": m29,
        "voiceNote":
            MessageLookupByLibrary.simpleMessage("Голосовое сообщение"),
        "voiceNoteWithTime": m31,
        "watchShape":
            MessageLookupByLibrary.simpleMessage("Форма экрана часов"),
        "whereToScan": MessageLookupByLibrary.simpleMessage("Где сканировать?"),
        "you": MessageLookupByLibrary.simpleMessage("Вы"),
        "youHaveBoostedChat":
            MessageLookupByLibrary.simpleMessage("Вы забустили чат")
      };
}
