part of 'user_bloc.dart';

enum UserStatus { initial, loading, success, failure }

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(UserStatus.initial) UserStatus status,
  }) = _UserState;
}
