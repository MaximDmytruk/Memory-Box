part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.playAudio({required String audioPath}) = _PlayAudio;
  const factory PlayerEvent.stopPlaying() = _StopPlaying;
  const factory PlayerEvent.seekToPosition(double position) = _SeekToPosition;
  const factory PlayerEvent.pauseAudio() = _PauseAudio;
  const factory PlayerEvent.getAudioDuration({required String audioPath}) = _GetAudioDuration;
}
