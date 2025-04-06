part of 'record_bloc.dart';

@freezed
class RecordEvent with _$RecordEvent {
  const factory RecordEvent.startRecording() = _StartRecording;
  const factory RecordEvent.stopRecording() = _StopRecording;
  const factory RecordEvent.playAudio({required String audioPath}) = _PlayAudio;
  const factory RecordEvent.updateAmplitudeHistory(
      {required List<double> amplitudeHistory}) = _UpdateAmplitudeHistory;
  const factory RecordEvent.updateRecordingDuration(
      {required int recordingDuration}) = _UpdateRecordingDuration;
}
