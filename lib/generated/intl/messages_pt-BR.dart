// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_BR locale. All the
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
  String get localeName => 'pt_BR';

  static String m7(version, codename) => "Versão ${version} (${codename})";

  static String m8(title) => "Áudio: ${title}";

  static String m0(time) => "Chamada (${time})";

  static String m9(error) => "Erro ao carregar conversa: ${error}";

  static String m1(user) => "${user} e outros foram adicionados";

  static String m10(id) => "A mensagem ${id} não foi encontrada";

  static String m11(name) => "Contato: ${name}";

  static String m12(caption) => "[Documento] ${caption}";

  static String m13(name) => "Tópico editado \"${name}\"";

  static String m14(count) =>
      "${count} ${Intl.plural(count, one: 'mensagem', other: 'mensagens')} encaminhada(s)";

  static String m15(name) => "Novo tópico \"${name}\"";

  static String m16(count) =>
      "${count} ${Intl.plural(count, one: 'chamada', other: 'chamadas')} recebida(s)";

  static String m17(count) =>
      "${count} ${Intl.plural(count, one: 'menção', other: 'menções')} não lida(s)";

  static String m18(count) =>
      "${count} ${Intl.plural(count, one: 'mensagem', other: 'mensagens')} não lida(s)";

  static String m2(name) => "${name} está te ligando...";

  static String m3(name) => "${name} acabou de criar um chat secreto com você!";

  static String m19(caption) => "[Foto] ${caption}";

  static String m20(caption) => "[Enquete] ${caption}";

  static String m21(version) => "Desenvolvido com TDLib ${version}";

  static String m22(count) =>
      "Premium (${count} ${Intl.plural(count, one: 'mês', other: 'meses')})";

  static String m4(date) => "Usado pela última vez: ${date}";

  static String m23(score) => "Fez ${score} pontos no jogo";

  static String m24(count) =>
      "${Intl.plural(count, one: 'segundo', other: 'segundos')}";

  static String m25(count) =>
      "${count} ${Intl.plural(count, one: 'Estrela', other: 'Estrelas')} do Telegram";

  static String m26(emoji) => "${emoji} Sticker";

  static String m27(time) => "Story (${time})";

  static String m5(user) => "${user} saiu";

  static String m6(time) => "Chamada de vídeo (${time})";

  static String m28(time) => "Chat de vídeo (${time})";

  static String m29(time) => "Mensagem de vídeo (${time})";

  static String m30(caption) => "[Vídeo] ${caption}";

  static String m31(time) => "Mensagem de voz (${time})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("Sobre o app"),
        "accounts": MessageLookupByLibrary.simpleMessage("Contas"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Adicionar conta"),
        "album": MessageLookupByLibrary.simpleMessage("Álbum"),
        "appVersion": m7,
        "audio": MessageLookupByLibrary.simpleMessage("Áudio"),
        "audioPrefix": m8,
        "avatarWasChanged": MessageLookupByLibrary.simpleMessage(
            "A foto de perfil foi alterada"),
        "avatarWasDeleted": MessageLookupByLibrary.simpleMessage(
            "A foto de perfil foi deletada"),
        "bgWasChanged": MessageLookupByLibrary.simpleMessage(
            "O plano de fundo foi alterado"),
        "botWriteAccessAllowed": MessageLookupByLibrary.simpleMessage(
            "O bot tem permissão para escrever mensagens"),
        "callWithTime": m0,
        "calls": MessageLookupByLibrary.simpleMessage("Chamadas"),
        "changedTheme": MessageLookupByLibrary.simpleMessage("Alterar tema"),
        "channelDescription":
            MessageLookupByLibrary.simpleMessage("Novidades e atualizações"),
        "chatBlocLoadingError": m9,
        "chatInfoBot":
            MessageLookupByLibrary.simpleMessage("Informações do Bot"),
        "chatInfoChannel":
            MessageLookupByLibrary.simpleMessage("Informações do canal"),
        "chatInfoGroup":
            MessageLookupByLibrary.simpleMessage("Informações do grupo"),
        "chatInfoPersonal":
            MessageLookupByLibrary.simpleMessage("Informações do perfil"),
        "chatListHeaderArchive":
            MessageLookupByLibrary.simpleMessage("Arquivo"),
        "chatListHeaderFolder": MessageLookupByLibrary.simpleMessage("Pasta"),
        "chatListHeaderMain":
            MessageLookupByLibrary.simpleMessage("Todos os chats"),
        "chatMembersWereAdded": m1,
        "chatViewMessageNotFoundError": m10,
        "chatWasShared":
            MessageLookupByLibrary.simpleMessage("O chat foi compartilhado"),
        "closeButton": MessageLookupByLibrary.simpleMessage("Fechar"),
        "colorScheme": MessageLookupByLibrary.simpleMessage("Aparência"),
        "connectionConnected":
            MessageLookupByLibrary.simpleMessage("Conectado"),
        "connectionConnecting":
            MessageLookupByLibrary.simpleMessage("Conectando..."),
        "connectionConnectingToProxy":
            MessageLookupByLibrary.simpleMessage("Conectando ao Proxy..."),
        "connectionUpdating":
            MessageLookupByLibrary.simpleMessage("Atualizando..."),
        "connectionWaitingForNetwork":
            MessageLookupByLibrary.simpleMessage("Aguardando rede..."),
        "contact": MessageLookupByLibrary.simpleMessage("Contato"),
        "contactPrefix": m11,
        "createButton": MessageLookupByLibrary.simpleMessage("Criar"),
        "createProxy": MessageLookupByLibrary.simpleMessage("Novo Proxy"),
        "disableChatOptimizations":
            MessageLookupByLibrary.simpleMessage("Desativar limpeza de chat"),
        "disableChatOptimizationsDesc": MessageLookupByLibrary.simpleMessage(
            "Não limpar mensagens invisíveis nas conversas"),
        "disableMicroAvatars": MessageLookupByLibrary.simpleMessage(
            "Desabilitar fotos de perfil pequenas"),
        "disableMicroAvatarsDesc": MessageLookupByLibrary.simpleMessage(
            "Os nomes de usuários próximos"),
        "disableProfileAvatars":
            MessageLookupByLibrary.simpleMessage("Desabilitar fotos de perfil"),
        "disableProfileAvatarsDesc": MessageLookupByLibrary.simpleMessage(
            "Exibido nas listas de conversa"),
        "document": MessageLookupByLibrary.simpleMessage("Documento"),
        "documentPrefix": m12,
        "doneButton": MessageLookupByLibrary.simpleMessage("Concluído"),
        "draftPrefix": MessageLookupByLibrary.simpleMessage("Rascunho: "),
        "editProxy": MessageLookupByLibrary.simpleMessage("Editar Proxy"),
        "editedForumTopic": m13,
        "enterPassword": MessageLookupByLibrary.simpleMessage("Insira a senha"),
        "error": MessageLookupByLibrary.simpleMessage("Erro"),
        "expiredPhoto": MessageLookupByLibrary.simpleMessage("Foto expirada"),
        "expiredVideo": MessageLookupByLibrary.simpleMessage("Vídeo expirado"),
        "expiredVideoNote":
            MessageLookupByLibrary.simpleMessage("Mensagem de vídeo expirada"),
        "expiredVoiceNote":
            MessageLookupByLibrary.simpleMessage("Mensagem de voz expirada"),
        "firstSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Algumas configurações"),
        "folderIsEmpty":
            MessageLookupByLibrary.simpleMessage("A pasta está vazia"),
        "forwardedMessagesPlural": m14,
        "getStarted": MessageLookupByLibrary.simpleMessage("Primeiros passos"),
        "gif": MessageLookupByLibrary.simpleMessage("GIF"),
        "giveaway": MessageLookupByLibrary.simpleMessage("Sorteio"),
        "giveawayFinished":
            MessageLookupByLibrary.simpleMessage("Sorteio terminado"),
        "giveawayWinners":
            MessageLookupByLibrary.simpleMessage("Ganhadores do sorteio"),
        "groupStickers":
            MessageLookupByLibrary.simpleMessage("Stickers do Grupo"),
        "groupWasCreated":
            MessageLookupByLibrary.simpleMessage("Grupo foi criado"),
        "handygram": MessageLookupByLibrary.simpleMessage("HandyGram"),
        "hasJoinedTelegram":
            MessageLookupByLibrary.simpleMessage("entrou no Telegram!"),
        "hiddenContent":
            MessageLookupByLibrary.simpleMessage("Conteúdo oculto"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Senha incorreta"),
        "interface": MessageLookupByLibrary.simpleMessage("Interface"),
        "invoice": MessageLookupByLibrary.simpleMessage("Fatura"),
        "loadingMessage":
            MessageLookupByLibrary.simpleMessage("Carregando mensagem..."),
        "location": MessageLookupByLibrary.simpleMessage("Local"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Sair"),
        "messageContentUnsupported": MessageLookupByLibrary.simpleMessage(
            "Tipo de mensagem não suportada:\n"),
        "messageTtlChanged": MessageLookupByLibrary.simpleMessage(
            "O timer de exclusão automática foi alterado"),
        "messageWasPinned":
            MessageLookupByLibrary.simpleMessage("Mensagem fixada"),
        "messages": MessageLookupByLibrary.simpleMessage("Mensagens"),
        "messaging": MessageLookupByLibrary.simpleMessage("Mensagens"),
        "newForumTopic": m15,
        "newVideoChat":
            MessageLookupByLibrary.simpleMessage("Nova chamada de vídeo"),
        "nextButton": MessageLookupByLibrary.simpleMessage("Próximo"),
        "notificationCalls": m16,
        "notificationMentions": m17,
        "notificationMessages": m18,
        "notificationNewSecretChat": MessageLookupByLibrary.simpleMessage(
            "Novo chat secreto foi criado"),
        "notificationSingleTitleCall":
            MessageLookupByLibrary.simpleMessage("Ligar"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Chat secreto"),
        "notificationSingleTitleScheduledMessage":
            MessageLookupByLibrary.simpleMessage("Mensagem agendada"),
        "notificationTextCall": m2,
        "notificationTextSecretChat": m3,
        "notifications": MessageLookupByLibrary.simpleMessage("Notificações"),
        "notificationsChannelChannels":
            MessageLookupByLibrary.simpleMessage("Canais"),
        "notificationsChannelGroups":
            MessageLookupByLibrary.simpleMessage("Grupos"),
        "notificationsChannelMentions":
            MessageLookupByLibrary.simpleMessage("Menções"),
        "notificationsChannelMentionsDesc":
            MessageLookupByLibrary.simpleMessage(
                "Todas as suas menções em chats de grupo"),
        "notificationsChannelMessages":
            MessageLookupByLibrary.simpleMessage("Mensagens"),
        "notificationsChannelMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "Todas as novas mensagens nos chats com notificações ativadas (de chats de grupos e pessoais)"),
        "notificationsChannelOther":
            MessageLookupByLibrary.simpleMessage("Outro"),
        "notificationsChannelOtherDesc": MessageLookupByLibrary.simpleMessage(
            "Todas as notificações que não contem mensagens ou menções"),
        "notificationsChannelPrivateChats":
            MessageLookupByLibrary.simpleMessage("Chats privados"),
        "officialChannel":
            MessageLookupByLibrary.simpleMessage("Canal oficial"),
        "optimizeStorageUsage":
            MessageLookupByLibrary.simpleMessage("Otimizar armazenamento"),
        "optmizing": MessageLookupByLibrary.simpleMessage("Otimizando..."),
        "paidMedia": MessageLookupByLibrary.simpleMessage("Mídia paga"),
        "password": MessageLookupByLibrary.simpleMessage("Senha"),
        "paymentRefunded":
            MessageLookupByLibrary.simpleMessage("O pagamento foi devolvido"),
        "paymentSuccessful": MessageLookupByLibrary.simpleMessage(
            "O pagamento foi bem sucedido"),
        "photo": MessageLookupByLibrary.simpleMessage("Foto"),
        "photoPrefix": m19,
        "poll": MessageLookupByLibrary.simpleMessage("Enquete"),
        "pollPrefix": m20,
        "poweredByTdlib": m21,
        "premiumGiftCode": MessageLookupByLibrary.simpleMessage(
            "Código de presente do Premium"),
        "premiumWithMonthsCount": m22,
        "prerenderAllMessages": MessageLookupByLibrary.simpleMessage(
            "Pré-renderizar todas as mensagens"),
        "prerenderAllMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "Pode ajudar com o problema de pulo de mensagens"),
        "proximityAlert":
            MessageLookupByLibrary.simpleMessage("Alerta de proximidade"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Adicionar Proxy"),
        "proxyConnectionDisconnected":
            MessageLookupByLibrary.simpleMessage("Desconectado"),
        "proxyConnectionLastUsedDate": m4,
        "proxyInsecure": MessageLookupByLibrary.simpleMessage("Inseguro"),
        "proxyPassword": MessageLookupByLibrary.simpleMessage("Senha"),
        "proxyPort": MessageLookupByLibrary.simpleMessage("Porta do Proxy"),
        "proxySecret": MessageLookupByLibrary.simpleMessage("Chave"),
        "proxyServer": MessageLookupByLibrary.simpleMessage("Servidor Proxy"),
        "proxySettingsButton":
            MessageLookupByLibrary.simpleMessage("Configurações de Proxy"),
        "proxySettingsMainToggle":
            MessageLookupByLibrary.simpleMessage("Proxy"),
        "proxySettingsTitle":
            MessageLookupByLibrary.simpleMessage("Configurações de Proxy"),
        "proxyType": MessageLookupByLibrary.simpleMessage("Tipo de Proxy"),
        "proxyTypeHTTP": MessageLookupByLibrary.simpleMessage("HTTP"),
        "proxyTypeMTProto": MessageLookupByLibrary.simpleMessage("MTProto"),
        "proxyTypePickerTitle":
            MessageLookupByLibrary.simpleMessage("Selecionar tipo de Proxy"),
        "proxyTypeSOCKS5": MessageLookupByLibrary.simpleMessage("SOCKS5"),
        "proxyUser": MessageLookupByLibrary.simpleMessage("Nome de usuário"),
        "qrInstruction": MessageLookupByLibrary.simpleMessage(
            "1. Abra o Telegram no seu telefone\n\n2. Vá para Configurações > Dispositivos > Conectar Desktop\n\n3. Escaneie esta imagem para fazer login"),
        "qrScanTitle": MessageLookupByLibrary.simpleMessage(
            "Escaneie para iniciar sessão"),
        "recentStickers":
            MessageLookupByLibrary.simpleMessage("Stickers recentes"),
        "removeButton": MessageLookupByLibrary.simpleMessage("Excluir"),
        "roleDesigner": MessageLookupByLibrary.simpleMessage("UX/UI Designer"),
        "roleFounder":
            MessageLookupByLibrary.simpleMessage("Fundador e desenvolvedor"),
        "runInBackground": MessageLookupByLibrary.simpleMessage("Notificações"),
        "runInBackgroundDesc":
            MessageLookupByLibrary.simpleMessage("Habilitar serviço Firebase"),
        "scheduledVideoChat":
            MessageLookupByLibrary.simpleMessage("Chamada de vídeo programada"),
        "scoredSomeScoreInGame": m23,
        "screenshotWasTaken":
            MessageLookupByLibrary.simpleMessage("Captura de tela feita"),
        "secondsCountPlural": m24,
        "secretChats": MessageLookupByLibrary.simpleMessage("Chats secretos"),
        "sectionAppearance": MessageLookupByLibrary.simpleMessage("Aparência"),
        "sectionPerformance":
            MessageLookupByLibrary.simpleMessage("Desempenho"),
        "selectShapeTitle": MessageLookupByLibrary.simpleMessage(
            "Selecionar formato do relógio"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Selecionar tema"),
        "send": MessageLookupByLibrary.simpleMessage("Enviar"),
        "sendFile": MessageLookupByLibrary.simpleMessage("Enviar Arquivo"),
        "sendMediaGIFTitle":
            MessageLookupByLibrary.simpleMessage("Escolha um GIF"),
        "sendMediaPhotoTitle":
            MessageLookupByLibrary.simpleMessage("Escolha uma foto"),
        "sendMediaStickerTitle":
            MessageLookupByLibrary.simpleMessage("Escolha um sticker"),
        "sendTextMessageTitle":
            MessageLookupByLibrary.simpleMessage("Escrever uma mensagem"),
        "sendVoiceMessageTitle":
            MessageLookupByLibrary.simpleMessage("Gravar mensagem de voz"),
        "settings": MessageLookupByLibrary.simpleMessage("Configurações"),
        "sharedUsers":
            MessageLookupByLibrary.simpleMessage("Usuários compartilhados"),
        "someone": MessageLookupByLibrary.simpleMessage("Alguém"),
        "someoneJoinedByRequest": MessageLookupByLibrary.simpleMessage(
            "Alguém foi aprovado para entrar"),
        "someoneJoinedViaLink":
            MessageLookupByLibrary.simpleMessage("Alguém entrou via link"),
        "something": MessageLookupByLibrary.simpleMessage("Algo"),
        "starsWithCount": m25,
        "stickerPlainTexted": m26,
        "stickersCountInRow": MessageLookupByLibrary.simpleMessage(
            "Quantidade de mídia por linha"),
        "stickersCountInRowDesc":
            MessageLookupByLibrary.simpleMessage("Usado em seletores de mídia"),
        "storage": MessageLookupByLibrary.simpleMessage("Armazenamento"),
        "storageFreeSpace":
            MessageLookupByLibrary.simpleMessage("Espaço Livre"),
        "storageHandyGramData":
            MessageLookupByLibrary.simpleMessage("Dados do HandyGram"),
        "storageNonHandyGram":
            MessageLookupByLibrary.simpleMessage("Outros apps"),
        "story": MessageLookupByLibrary.simpleMessage("Story"),
        "storyWithDuration": m27,
        "suggestedAvatar":
            MessageLookupByLibrary.simpleMessage("Foto de perfil sugerida"),
        "templateTitleRepliesBot":
            MessageLookupByLibrary.simpleMessage("Respostas"),
        "templateTitleSavedMessages":
            MessageLookupByLibrary.simpleMessage("Mensagens Salvas"),
        "tgPassport": MessageLookupByLibrary.simpleMessage("Telegram Passport"),
        "titleWasChanged":
            MessageLookupByLibrary.simpleMessage("Título foi alterado"),
        "topicWasClosed":
            MessageLookupByLibrary.simpleMessage("O tópico foi fechado"),
        "topicWasHidden":
            MessageLookupByLibrary.simpleMessage("O tópico foi oculto"),
        "topicWasOpened":
            MessageLookupByLibrary.simpleMessage("O tópico foi aberto"),
        "topicWasShown":
            MessageLookupByLibrary.simpleMessage("O tópico foi exibido"),
        "uiScale": MessageLookupByLibrary.simpleMessage("Escala da interface"),
        "unsupported": MessageLookupByLibrary.simpleMessage("Não suportado"),
        "upgradedToSupergroup": MessageLookupByLibrary.simpleMessage(
            "Atualizado para o supergrupo"),
        "userHasLeft": m5,
        "video": MessageLookupByLibrary.simpleMessage("Vídeo"),
        "videoCallWithTime": m6,
        "videoChatInvitation":
            MessageLookupByLibrary.simpleMessage("Convite de chat de vídeo"),
        "videoChatWithTime": m28,
        "videoNote": MessageLookupByLibrary.simpleMessage("Mensagem de vídeo"),
        "videoNoteWithTime": m29,
        "videoPrefix": m30,
        "voiceNote": MessageLookupByLibrary.simpleMessage("Mensagem de voz"),
        "voiceNoteWithTime": m31,
        "watchShape": MessageLookupByLibrary.simpleMessage("Formato de tela"),
        "whereToScan": MessageLookupByLibrary.simpleMessage("Onde escanear?"),
        "you": MessageLookupByLibrary.simpleMessage("Você"),
        "youHaveBoostedChat":
            MessageLookupByLibrary.simpleMessage("Você impulsionou o chat")
      };
}
