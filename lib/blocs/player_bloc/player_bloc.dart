import 'package:bloc/bloc.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final FlutterSoundPlayer _player = FlutterSoundPlayer();

  PlayerBloc() : super(PlayerState()) {
    on<_PlayAudio>(_playAudio);
    on<_StopPlaying>(_stopPlaying);
    on<_SeekToPosition>(_seekToPosition);
  }

  void _playAudio(
    _PlayAudio event,
    Emitter<PlayerState> emit,
  ) async {
    if (event.audioPath.isEmpty) {
      emit(
        state.copyWith(
          status: PlayerStatus.error,
          errorText: 'Шлях до файлу не вказано',
        ),
      );
      return;
    }

    await _player.openPlayer();
    final duration = await _player.startPlayer(fromURI: event.audioPath);
    print(duration);
    await _player.startPlayer(
      fromURI: event.audioPath,
    );
    final test = _player.onProgress?.listen((progress) {
      progress.position;
    });
    print('Position = ${test}');
    emit(
      state.copyWith(
        status: PlayerStatus.playing,
        playing: true,
        audioDuration: duration?.inSeconds.toDouble() ?? 0.0,
      ),
    );

    // _player.onProgress!.listen((progress) {
    //   print('');
    //   print('Progress');
    //   print(progress.duration);
    //   print('');
    //   emit(state.copyWith(
    //     status: PlayerStatus.playing,
    //     playing: true,
    //     audioPosition: progress.position.inSeconds.toDouble(),
    //     audioDuration: progress.duration.inSeconds.toDouble(),
    //   ));
    // });
  }

  void _stopPlaying(
    _StopPlaying event,
    Emitter<PlayerState> emit,
  ) {
    _player.stopPlayer();
    // _player.closePlayer();
    emit(
      state.copyWith(
        status: PlayerStatus.stopPlaying,
        playing: false,
        // audioDuration: null,
        // audioPosition: null,
      ),
    );
  }

  void _seekToPosition(_SeekToPosition event, Emitter<PlayerState> emit) async {
    await _player.seekToPlayer(
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
}
