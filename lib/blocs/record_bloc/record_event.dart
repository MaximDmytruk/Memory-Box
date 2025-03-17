part of 'record_bloc.dart';

@freezed
class RecordEvent with _$RecordEvent {
  const factory RecordEvent.startRecording() = _StartRecording;
  const factory RecordEvent.stopRecording() = _StopRecording;
  const factory RecordEvent.playAudio() = _PlayAudio;
}