part of 'player_bloc.dart';

enum PlayerStatus {
  initial,
  playing,
  stopPlaying,
  error,
}

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    @Default(PlayerStatus.initial) PlayerStatus status,
    @Default(false) bool playing,
    String? audio,
    String? errorText,
    double? audioPosition,
    double? audioDuration,
  }) = _PlayerState;
}
