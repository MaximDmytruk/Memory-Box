part of 'record_bloc.dart';

enum RecordStatus {
  initial,
  recordingInProgress,
  recordingStopped,
  play,
  error,
  loading,
}

@freezed
class RecordState with _$RecordState {
  const factory RecordState({
    @Default(RecordStatus.initial) RecordStatus status,
    String? errorText,
  }) = _RecordState;
}
