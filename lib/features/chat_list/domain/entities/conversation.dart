import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../chat/domain/entities/message.dart';

part 'conversation.freezed.dart';

@freezed
abstract class Conversation with _$Conversation {
  factory Conversation({
    @Default([]) List<Message> messages,
    required String id,
    Message? lastMessage,
    required String peerUserId,
    bool? isTyping,
  }) = _Conversation;
}
