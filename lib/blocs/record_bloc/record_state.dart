part of 'record_bloc.dart';

enum RecordStatus {
  initial,
  recordingInProgress,
  recordingStopped,
  play,
  error,
  loading,
  stopPlaying,
  loaded,
}

@freezed
class RecordState with _$RecordState {
  const factory RecordState({
    @Default(RecordStatus.initial) RecordStatus status,
    String? audioPath,
    String? errorText,
    @Default([]) List<double> amplitudeHistory,
    @Default(0) int recordingDuration,
  }) = _RecordState;
}
