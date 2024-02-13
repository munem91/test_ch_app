import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:test_ch_app/features/chat/data/data_source/mock_data_source/mock_message_data.dart';
import 'package:test_ch_app/features/chat_list/domain/entities/conversation.dart';
import 'package:test_ch_app/features/chat_list/domain/repository/conversations_repository.dart';
import 'package:test_ch_app/features/user/data/data_source/mock_data_source/mock_users_data.dart';
import 'package:test_ch_app/features/user/domain/entities/user_entities.dart';
import 'package:test_ch_app/features/user/domain/repository/user_repository.dart';

part 'chat_list_state.dart';
part 'chat_list_cubit.freezed.dart';

class ChatListCubit extends Cubit<ChatListState> {
  final ConversationsRepository _conversationsRepository =
      GetIt.I<ConversationsRepository>();

  ChatListCubit() : super(const ChatListState.initial());

  Future<void> loadConversations() async {
    try {
      emit(const ChatListState.initial());
      await Future.delayed(const Duration(seconds: 2));

      final List<Conversation> conversations = await _conversationsRepository
          .listAllConversations("yourDynamicUserId");
      emit(ChatListState.loaded(conversations));
    } catch (e) {
      emit(ChatListState.error("Failed to load conversations: $e"));
    }
  }
}
