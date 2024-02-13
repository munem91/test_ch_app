part of 'conversation_list_tile_cubit.dart';

@freezed
class ConversationListTileState with _$ConversationListTileState {
  const factory ConversationListTileState.initial() = _Initial;
  const factory ConversationListTileState.loaded({User? user}) = _Loaded;
  const factory ConversationListTileState.error(String errorMessage) = _Error;
}
