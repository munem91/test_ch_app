import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_content.freezed.dart';

@freezed
abstract class MessageContent with _$MessageContent {
  factory MessageContent({
    String? text,
    List<dynamic>? attachments,
    String? quotedMessageId,
  }) = _MessageContent;
}
