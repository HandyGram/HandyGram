import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/misc/updaters_wrappers.dart';
import 'package:handygram/src/common/tdlib/providers/stories/updates.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class StoriesProvider extends TdlibDataUpdatesProvider<StoryUpdate>
    with TdlibUpdatesProviderTypicalWrappers {
  Future<td.Story> getStory(int storyId, int storySenderChatId) =>
      tdlibGetAnySingleBasicWrapper<td.Story>(td.GetStory(
        storyId: storyId,
        storySenderChatId: storySenderChatId,
        onlyLocal: false,
      ));

  @override
  void updatesListener(td.TdObject obj) {
    switch (obj) {
      case td.UpdateStory(story: final story):
        update(StoryUpdate(
          storyId: story.id,
          storySenderChatId: story.senderChatId,
          story: story,
        ));
      case td.UpdateStoryDeleted(
          storyId: final storyId,
          storySenderChatId: final senderId,
        ):
        update(StoryUpdate(
          storyId: storyId,
          storySenderChatId: senderId,
        ));
      default:
        return;
    }
  }
}
