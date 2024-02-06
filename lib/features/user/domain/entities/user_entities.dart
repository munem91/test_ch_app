import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entities.freezed.dart';

@freezed
abstract class User with _$User {
  factory User({
    @Default('') String firstName,
    @Default('') String lastName,
    required String id,
    @Default(false) bool online,
  }) = _User;
}
