part of 'recording_screen_bloc.dart';

enum RecordingScreenStatus {
  play,
  record,
}

@freezed
class RecordingScreenState with _$RecordingScreenState {
  const factory RecordingScreenState({
    @Default(RecordingScreenStatus.record) RecordingScreenStatus status,
    @Default('') String audioPath,

  }) = _RecordingScreenState;
}
