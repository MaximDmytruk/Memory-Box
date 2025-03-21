import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'record_event.dart';
part 'record_state.dart';
part 'record_bloc.freezed.dart';

class RecordBloc extends Bloc<RecordEvent, RecordState> {
  final FlutterSoundRecorder _recorder = FlutterSoundRecorder();

  RecordBloc() : super(const RecordState()) {
    on<_StartRecording>(_startRecording);
    on<_StopRecording>(_stopRecording);
    on<_PlayAudio>(_playAudio);
  }


  void _startRecording(
    _StartRecording event,
    Emitter<RecordState> emit,
  ) async {
    emit(
      state.copyWith(
        status: RecordStatus.loading,
      ),
    );

    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      emit(
        state.copyWith(
          status: RecordStatus.error,
          errorText: 'Дозвіл до мікрофон не надано',
        ),
      );
      return;
    }

    await _recorder.openRecorder();
    //TODO: NAME
    String randomName = Random().nextInt(1000).toString();
    final String path = '/storage/emulated/0/Download/record_$randomName.aac';

    await _recorder.startRecorder(toFile: path);
    emit(state.copyWith(status: RecordStatus.recordingInProgress));
  }

  void _stopRecording(
    _StopRecording event,
    Emitter<RecordState> emit,
  ) async {
    emit(
      state.copyWith(
        status: RecordStatus.loading,
      ),
    );

    _recorder.stopRecorder();
    _recorder.closeRecorder();
  }

  void _playAudio(
    _PlayAudio event,
    Emitter<RecordState> emit,
  ) async {}
}
