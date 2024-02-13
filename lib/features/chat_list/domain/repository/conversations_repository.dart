import 'package:get_it/get_it.dart';
import 'package:test_ch_app/features/chat/data/data_source/mock_data_source/mock_message_data.dart';
import 'package:test_ch_app/features/chat_list/domain/entities/conversation.dart';
import 'package:test_ch_app/features/chat_list/domain/repository/abstract_conversation.dart';
import 'package:test_ch_app/features/user/data/data_source/mock_data_source/mock_users_data.dart';
import 'package:test_ch_app/features/user/domain/entities/user_entities.dart';
import 'package:test_ch_app/features/user/domain/repository/user_repository.dart';

class ConversationsRepository implements IConversationsRepository {
  final UserRepository _userRepository = UserRepository();

  @override
  Future<List<Conversation>> listAllConversations(String userId) async {
    final List<Conversation> myChats = MockUsers.users.entries.map(
      (MapEntry<String, User> entry) {
        final User? user = _userRepository.findUserById(entry.key);

        if (user != null) {
          return MockConversationDatasource.fakeConversation(userId, user);
        } else {
          // Handle the case when user is not found (optional)
          return MockConversationDatasource.fakeConversation(
              userId, User(id: entry.key));
        }
      },
    ).toList();

    return myChats;
  }
}


