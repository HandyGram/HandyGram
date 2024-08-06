import 'package:handy_tdlib/api.dart' as td;

class StoryUpdate {
  final int storyId;
  final int storySenderChatId;

  /// null if deleted
  final td.Story? story;

  const StoryUpdate({
    required this.storyId,
    required this.storySenderChatId,
    this.story,
  });
}
