import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/pages/photo_viewer.dart';
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/chat_image.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

class ChatInfoPage extends StatefulWidget {
  const ChatInfoPage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  State<ChatInfoPage> createState() => _ChatInfoPageState();
}

class _ChatInfoPageState extends State<ChatInfoPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildTextContainer(String? text, [int? maxLines, TextAlign? align]) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        text ?? "null",
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        textAlign: align,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyMedium?.color,
          fontSize: scaleText(12),
        ),
      ),
    );
  }

  static const Widget _loading = SizedBox(
    height: 30,
    width: 30,
    child: CircularProgressIndicator(),
  );

  @override
  Widget build(BuildContext context) {
    var id = widget.args["id"];
    return Scaffold(
      body: ScalingList(
        children: [
          Consumer(
            builder: (context, ref, _) {
              var chat =
                  ref.watch(session.chatsInfoCacheP.select((c) => c[id]));
              String? title = chat?.title;
              if (title == null || title.isEmpty) {
                return _loading;
              }
              return Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () async {
                            if (session.chatsInfoCache[id]?.photo?.big ==
                                null) {
                              return;
                            }

                            TgImage(
                              id: session
                                  .chatsInfoCache[id]!.photo!.big.remote.id,
                            ).load().then((i) {
                              if (i != null && context.mounted) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PhotoViewer(photo: i),
                                  ),
                                );
                              }
                            });
                          },
                          child: ChatImage(
                            id: id,
                            isUser: false,
                            title: title,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: _buildTextContainer(title, 3, TextAlign.center),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              );
            },
          ),
          Consumer(
            builder: (context, ref, _) {
              tdlib.ChatType? type = ref.watch(
                session.chatsInfoCacheP.select((c) => c[id]?.type),
              );

              bool isGroup = type is! tdlib.ChatTypePrivate;
              bool isChannel = false;
              String? description, username, phoneNumber;
              int? totalMembers;
              switch (type) {
                case tdlib.ChatTypePrivate():
                  id = type.userId;
                  tdlib.User? u = ref.watch(
                    session.usersInfoCacheP.select((c) => c[id]),
                  );
                  tdlib.UserFullInfo? ufi = ref.watch(
                    session.usersFullInfoCacheP.select((c) => c[id]),
                  );
                  if (u == null || ufi == null) {
                    session.usersInfoCache.get(id);
                    session.usersFullInfoCache.get(id);
                    return _loading;
                  }
                  description = ufi.bio?.text;
                  username = u.usernames?.activeUsernames[0];
                  phoneNumber = u.phoneNumber.isEmpty ? null : u.phoneNumber;
                  break;
                case tdlib.ChatTypeBasicGroup():
                  id = type.basicGroupId;
                  tdlib.BasicGroup? bg = ref.watch(
                    session.basicGroupsP.select((c) => c[id]),
                  );
                  tdlib.BasicGroupFullInfo? bgfi = ref.watch(
                    session.basicGroupsFullInfoP.select((c) => c[id]),
                  );
                  if (bg == null || bgfi == null) {
                    session.basicGroups.get(id);
                    session.basicGroupsFullInfo.get(id);
                    return _loading;
                  }

                  description = bgfi.description;
                  totalMembers = bg.memberCount;
                  username = null;
                  break;
                case tdlib.ChatTypeSupergroup():
                  id = type.supergroupId;
                  tdlib.Supergroup? sg = ref.watch(
                    session.supergroupsP.select((c) => c[id]),
                  );
                  tdlib.SupergroupFullInfo? sgfi = ref.watch(
                    session.supergroupsFullInfoP.select((c) => c[id]),
                  );
                  if (sg == null || sgfi == null) {
                    session.supergroups.get(id);
                    session.supergroupsFullInfo.get(id);
                    return _loading;
                  }

                  description = sgfi.description;
                  totalMembers = sg.memberCount;
                  username = sg.usernames?.activeUsernames[0];
                  isChannel = sg.isChannel;
                  break;
                case null:
                  return _loading;
                default:
                  return const Text("secret chats are not supported yet");
              }

              return Column(
                children: [
                  if (phoneNumber != null)
                    _buildTextContainer("+$phoneNumber", 2, TextAlign.start),
                  if (phoneNumber != null) const SizedBox(height: 10),
                  if (username != null)
                    _buildTextContainer("@$username", null, TextAlign.start),
                  if (username != null) const SizedBox(height: 10),
                  if (isGroup)
                    _buildTextContainer(
                      "$totalMembers ${isChannel ? "subscribers" : "members"}",
                      1,
                      TextAlign.start,
                    )
                  else
                    _buildTextContainer("Private chat", null, TextAlign.start),
                  const SizedBox(height: 10),
                  if (description != null && description.isNotEmpty)
                    _buildTextContainer(description, 50, TextAlign.start),
                  if (description != null && description.isNotEmpty)
                    const SizedBox(height: 10),
                ],
              );
            },
          ),
          if (!settingsStorage.backButtonDisabled)
            PreSettingsButton(
              icon: Icons.arrow_back,
              title: "Go back",
              onPressed: () => Navigator.of(context).pop(),
            ),
        ],
      ),
    );
  }
}
