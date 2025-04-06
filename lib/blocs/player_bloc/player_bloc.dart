import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final AudioPlayer _player = AudioPlayer();

  PlayerBloc() : super(const PlayerState()) {
    on<_PlayAudio>(_playAudio);
    on<_PauseAudio>(_pauseAudio);
    on<_StopPlaying>(_stopPlaying);
    on<_SeekToPosition>(_seekToPosition);
    on<_GetAudioDuration>(_getAudioDuration);
  }

  Future<void> _playAudio(_PlayAudio event, Emitter<PlayerState> emit) async {
    try {
      await _player.setUrl(
        event.audioPath,
      );
      _player.play();

      emit(
        state.copyWith(
          status: PlayerStatus.playing,
          playing: true,
        ),
      );

      _player.positionStream.listen((
        position,
      ) {
        emit(
          state.copyWith(
            audioPosition: position.inSeconds.toDouble(),
          ),
        );
      });
    } catch (e) {
      emit(
        state.copyWith(
          status: PlayerStatus.error,
          errorText: e.toString(),
        ),
      );
    }
  }

  Future<void> _pauseAudio(
    _PauseAudio event,
    Emitter<PlayerState> emit,
  ) async {
    await _player.pause();
    emit(
      state.copyWith(
        status: PlayerStatus.paused,
        playing: false,
      ),
    );
  }

  Future<void> _stopPlaying(
      _StopPlaying event, Emitter<PlayerState> emit) async {
    await _player.stop();
    emit(
      state.copyWith(
        status: PlayerStatus.stopPlaying,
        playing: false,
      ),
    );
  }

  Future<void> _seekToPosition(
      _SeekToPosition event, Emitter<PlayerState> emit) async {
    await _player.seek(
      Duration(
        seconds: event.position.toInt(),
      ),
    );
    emit(
      state.copyWith(
        audioPosition: event.position,
      ),
    );
  }

  Future<void> _getAudioDuration(
      _GetAudioDuration event, Emitter<PlayerState> emit) async {
    try {
      await _player.setUrl(event.audioPath);
      final duration = _player.duration;
      emit(
        state.copyWith(
          audioDuration: duration?.inSeconds.toDouble(),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: PlayerStatus.error,
          errorText: e.toString(),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _player.dispose();
    return super.close();
  }
}
