// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageContent {
  String? get text => throw _privateConstructorUsedError;
  List<dynamic>? get attachments => throw _privateConstructorUsedError;
  String? get quotedMessageId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageContentCopyWith<MessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageContentCopyWith<$Res> {
  factory $MessageContentCopyWith(
          MessageContent value, $Res Function(MessageContent) then) =
      _$MessageContentCopyWithImpl<$Res, MessageContent>;
  @useResult
  $Res call(
      {String? text, List<dynamic>? attachments, String? quotedMessageId});
}

/// @nodoc
class _$MessageContentCopyWithImpl<$Res, $Val extends MessageContent>
    implements $MessageContentCopyWith<$Res> {
  _$MessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? attachments = freezed,
    Object? quotedMessageId = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      quotedMessageId: freezed == quotedMessageId
          ? _value.quotedMessageId
          : quotedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageContentImplCopyWith<$Res>
    implements $MessageContentCopyWith<$Res> {
  factory _$$MessageContentImplCopyWith(_$MessageContentImpl value,
          $Res Function(_$MessageContentImpl) then) =
      __$$MessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? text, List<dynamic>? attachments, String? quotedMessageId});
}

/// @nodoc
class __$$MessageContentImplCopyWithImpl<$Res>
    extends _$MessageContentCopyWithImpl<$Res, _$MessageContentImpl>
    implements _$$MessageContentImplCopyWith<$Res> {
  __$$MessageContentImplCopyWithImpl(
      _$MessageContentImpl _value, $Res Function(_$MessageContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? attachments = freezed,
    Object? quotedMessageId = freezed,
  }) {
    return _then(_$MessageContentImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      quotedMessageId: freezed == quotedMessageId
          ? _value.quotedMessageId
          : quotedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MessageContentImpl implements _MessageContent {
  _$MessageContentImpl(
      {this.text, final List<dynamic>? attachments, this.quotedMessageId})
      : _attachments = attachments;

  @override
  final String? text;
  final List<dynamic>? _attachments;
  @override
  List<dynamic>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? quotedMessageId;

  @override
  String toString() {
    return 'MessageContent(text: $text, attachments: $attachments, quotedMessageId: $quotedMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageContentImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.quotedMessageId, quotedMessageId) ||
                other.quotedMessageId == quotedMessageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text,
      const DeepCollectionEquality().hash(_attachments), quotedMessageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageContentImplCopyWith<_$MessageContentImpl> get copyWith =>
      __$$MessageContentImplCopyWithImpl<_$MessageContentImpl>(
          this, _$identity);
}

abstract class _MessageContent implements MessageContent {
  factory _MessageContent(
      {final String? text,
      final List<dynamic>? attachments,
      final String? quotedMessageId}) = _$MessageContentImpl;

  @override
  String? get text;
  @override
  List<dynamic>? get attachments;
  @override
  String? get quotedMessageId;
  @override
  @JsonKey(ignore: true)
  _$$MessageContentImplCopyWith<_$MessageContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
