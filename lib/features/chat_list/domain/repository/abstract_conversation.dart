import '../entities/conversation.dart';

abstract class IConversationsRepository {
   Future<List<Conversation>> listAllConversations(String userId);
}