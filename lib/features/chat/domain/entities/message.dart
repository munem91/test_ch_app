import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ch_app/features/chat/domain/entities/message_content.dart';

part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  factory Message({
    required String userId,
    required MessageContent content,
    required DateTime createdAt,
    required bool isViewed,
  }) = _Message;
}
