import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/misc/strings.dart';
import 'package:handygram/src/components/icons/avatar.dart';

class _UserInfo {
  final String title;
  final String phoneNumber;
  final int id;

  const _UserInfo({
    required this.title,
    required this.phoneNumber,
    required this.id,
  });
}

class SettingsUserButton extends StatelessWidget {
  const SettingsUserButton({
    super.key,
  });

  _UserInfo _infoFromUser(td.User user) => _UserInfo(
        title: squashName(user.firstName, user.lastName),
        phoneNumber: "+${user.phoneNumber}",
        id: user.id,
      );

  Future<_UserInfo> _loadInfo(AppLocalizations l10n) async {
    final user = await CurrentAccount.providers.users.getMe();
    return _infoFromUser(user);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(31),
      onTap: () => GoRouter.of(context).push("/settings/account"),
      splashColor: ColorStyles.active.onSurface.withOpacity(0.1),
      highlightColor: ColorStyles.active.onSurface.withOpacity(0.1),
      child: Ink(
        padding: const EdgeInsets.all(10),
        height: 61.5,
        width: MediaQuery.of(context).size.width * 0.89,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31),
          color: ColorStyles.active.surface,
        ),
        child: FutureBuilder<_UserInfo>(
          future: _loadInfo(AppLocalizations.of(context)),
          builder: (context, snapshot) {
            if (!snapshot.hasData || snapshot.data == null) {
              return Center(
                child: Text(
                  snapshot.hasError ? "Error" : "Loading...",
                  style: TextStyles.active.bodyMedium,
                ),
              );
            }
            return StreamBuilder(
              initialData: snapshot.data,
              stream: CurrentAccount.providers.users
                  .filter(snapshot.data!.id)
                  .map((e) => _infoFromUser(
                        e,
                      )),
              builder: (context, snapshot) => Row(
                children: [
                  SizedBox(
                    height: 38,
                    width: 38,
                    child: ProfileAvatar(chatId: snapshot.data!.id),
                  ),
                  const SizedBox(width: 7),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          snapshot.data!.title,
                          maxLines: 1,
                          style: TextStyles.active.titleMedium,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                        Text(
                          snapshot.data!.phoneNumber,
                          maxLines: 1,
                          style: TextStyles.active.bodyMedium!.copyWith(
                            color: ColorStyles.active.secondary,
                          ),
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
