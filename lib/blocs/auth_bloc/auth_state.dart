part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  authorized,
  guest,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
  }) = _AuthState;
}
