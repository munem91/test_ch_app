import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ch_app/features/chat_list/domain/entities/conversation.dart';
import 'package:test_ch_app/features/user/domain/entities/user_entities.dart';
import 'package:test_ch_app/features/user/domain/repository/user_repository.dart';

part 'conversation_list_tile_state.dart';
part 'conversation_list_tile_cubit.freezed.dart';

class ConversationListTileCubit extends Cubit<ConversationListTileState> {
  ConversationListTileCubit()
      : super(const ConversationListTileState.initial());

  Future<void> loadListTitle(Conversation conversation) async {
    try {
      emit(const ConversationListTileState.initial());
      final User? user = UserRepository().findUserById(conversation.peerUserId);
      emit(ConversationListTileState.loaded(user: user));
    } catch (e) {
      emit(const ConversationListTileState.error(
          "Не удалось загрузить информацию о пользователе"));
    }
  }
}
