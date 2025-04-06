part of 'recording_screen_bloc.dart';

@freezed
class RecordingScreenEvent with _$RecordingScreenEvent {
  
  const factory RecordingScreenEvent.toPlay({ required String audioPath}) = _ToPlay;
  const factory RecordingScreenEvent.toRecord() = _ToRecord;
}