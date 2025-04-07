part of 'profile_screen_bloc.dart';

enum ProfileScreenStatus {
  loaded,
  edit,
}

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState({
    @Default(ProfileScreenStatus.loaded) ProfileScreenStatus status,
    @Default(false) bool editModeOn,
  }) = _ProfileScreenState;
}
