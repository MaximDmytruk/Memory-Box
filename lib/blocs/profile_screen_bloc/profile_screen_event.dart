part of 'profile_screen_bloc.dart';

@freezed
class ProfileScreenEvent with _$ProfileScreenEvent {
  const factory ProfileScreenEvent.onEditMode() = _OnEditMode;
  const factory ProfileScreenEvent.offEditMode() = _OffEditMode;
}