import 'package:test_ch_app/features/user/data/data_source/mock_data_source/mock_users_data.dart';

import '../../../../chat_list/domain/entities/conversation.dart';
import '../../../../user/domain/entities/user_entities.dart';
import '../../../domain/entities/message.dart';
import '../../../domain/entities/message_content.dart';

class MockConversationDatasource {
  static Conversation fakeConversation(String ownUserId, User user) {
    final peerUserId = user.id;

    final messages = [
      fakeMessage(ownUserId),
      fakeMessage(peerUserId),
      fakeMessage(ownUserId),
      fakeMessage(peerUserId),
    ];

    return Conversation(
      id: 'demoChat',
      messages: messages,
      lastMessage: messages.last,
      isTyping: false,
      peerUserId: peerUserId,
    );
  }

  static Message fakeMessage(String userId) {
    return Message(
      userId: userId,
      content: fakeMessageContent(),
      createdAt: DateTime.now(),
      isViewed: false,
    );
  }

  static MessageContent fakeMessageContent() {
    return MessageContent(text: 'fake message'); 
  }
}
