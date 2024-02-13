part of 'chat_list_cubit.dart';

@freezed
class ChatListState with _$ChatListState {
  const factory ChatListState.initial() = _Initial;
  const factory ChatListState.loaded(List<Conversation> conversations) =
      _Loaded;
  const factory ChatListState.error(String errorMessage) = _Error;
}
