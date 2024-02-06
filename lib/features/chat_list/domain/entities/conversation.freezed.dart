// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Conversation {
  List<Message> get messages => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Message? get lastMessage => throw _privateConstructorUsedError;
  String get peerUserId => throw _privateConstructorUsedError;
  bool? get isTyping => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res, Conversation>;
  @useResult
  $Res call(
      {List<Message> messages,
      String id,
      Message? lastMessage,
      String peerUserId,
      bool? isTyping});

  $MessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res, $Val extends Conversation>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? id = null,
    Object? lastMessage = freezed,
    Object? peerUserId = null,
    Object? isTyping = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      peerUserId: null == peerUserId
          ? _value.peerUserId
          : peerUserId // ignore: cast_nullable_to_non_nullable
              as String,
      isTyping: freezed == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationImplCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$ConversationImplCopyWith(
          _$ConversationImpl value, $Res Function(_$ConversationImpl) then) =
      __$$ConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Message> messages,
      String id,
      Message? lastMessage,
      String peerUserId,
      bool? isTyping});

  @override
  $MessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$ConversationImplCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res, _$ConversationImpl>
    implements _$$ConversationImplCopyWith<$Res> {
  __$$ConversationImplCopyWithImpl(
      _$ConversationImpl _value, $Res Function(_$ConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? id = null,
    Object? lastMessage = freezed,
    Object? peerUserId = null,
    Object? isTyping = freezed,
  }) {
    return _then(_$ConversationImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      peerUserId: null == peerUserId
          ? _value.peerUserId
          : peerUserId // ignore: cast_nullable_to_non_nullable
              as String,
      isTyping: freezed == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ConversationImpl implements _Conversation {
  _$ConversationImpl(
      {final List<Message> messages = const [],
      required this.id,
      this.lastMessage,
      required this.peerUserId,
      this.isTyping})
      : _messages = messages;

  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String id;
  @override
  final Message? lastMessage;
  @override
  final String peerUserId;
  @override
  final bool? isTyping;

  @override
  String toString() {
    return 'Conversation(messages: $messages, id: $id, lastMessage: $lastMessage, peerUserId: $peerUserId, isTyping: $isTyping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.peerUserId, peerUserId) ||
                other.peerUserId == peerUserId) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      id,
      lastMessage,
      peerUserId,
      isTyping);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationImplCopyWith<_$ConversationImpl> get copyWith =>
      __$$ConversationImplCopyWithImpl<_$ConversationImpl>(this, _$identity);
}

abstract class _Conversation implements Conversation {
  factory _Conversation(
      {final List<Message> messages,
      required final String id,
      final Message? lastMessage,
      required final String peerUserId,
      final bool? isTyping}) = _$ConversationImpl;

  @override
  List<Message> get messages;
  @override
  String get id;
  @override
  Message? get lastMessage;
  @override
  String get peerUserId;
  @override
  bool? get isTyping;
  @override
  @JsonKey(ignore: true)
  _$$ConversationImplCopyWith<_$ConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
