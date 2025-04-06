part of 'registration_bloc.dart';

enum RegistrationStatus {
  initial,
  loading,
}

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(RegistrationStatus.initial) RegistrationStatus status,
  }) = _RegistrationState;
}
