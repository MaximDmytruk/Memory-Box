import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box/repositories/audio_repository.dart';
import 'package:permission_handler/permission_handler.dart';

part 'record_event.dart';
part 'record_state.dart';
part 'record_bloc.freezed.dart';

class RecordBloc extends Bloc<RecordEvent, RecordState> {
  final AudioRepository audioRepository;
  final FlutterSoundRecorder _recorder = FlutterSoundRecorder();

  RecordBloc({
    required this.audioRepository,
  }) : super(const RecordState()) {
    on<_StartRecording>(_startRecording);
    on<_StopRecording>(_stopRecording);
    on<_UpdateAmplitudeHistory>(_updateAmplitudeHistory);
    on<_UpdateRecordingDuration>(_updateRecordingDuration);
  }

  void _startRecording(
    _StartRecording event,
    Emitter<RecordState> emit,
  ) async {
    final PermissionStatus permissionStatus =
        await Permission.microphone.request();
    if (permissionStatus != PermissionStatus.granted) {
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
    await _recorder.setSubscriptionDuration(
      const Duration(
        milliseconds: 100,
      ),
    );
    _recorder.startRecorder(
      toFile: path,
    );

    _recorder.onProgress?.listen((event) {
      Duration recordingDuration = event.duration;
      double amplitude = (event.decibels ?? -60).abs() / 60;
      if (amplitude < 0.30) {
        amplitude = 0.0;
      }

      print(amplitude);
      final List<double> updatedHistory = List.from(
        state.amplitudeHistory,
      )..add(amplitude);

      if (updatedHistory.length > 100) {
        updatedHistory.removeAt(0);
      }
      add(
        RecordEvent.updateRecordingDuration(
          recordingDuration: recordingDuration.inSeconds,
        ),
      );
      add(
        RecordEvent.updateAmplitudeHistory(
          amplitudeHistory: updatedHistory,
        ),
      );
    });

    audioRepository.saveAudio(
      path,
    );
    emit(
      state.copyWith(
        status: RecordStatus.recordingInProgress,
        audioPath: path,
      ),
    );
  }

  void _stopRecording(
    _StopRecording event,
    Emitter<RecordState> emit,
  ) async {
    _recorder.stopRecorder();

    emit(
      state.copyWith(
        status: RecordStatus.recordingStopped,
        amplitudeHistory: [],
      ),
    );
  }

  void _updateAmplitudeHistory(
    _UpdateAmplitudeHistory event,
    Emitter<RecordState> emit,
  ) {
    emit(
      state.copyWith(
        amplitudeHistory: event.amplitudeHistory,
      ),
    );
  }

  void _updateRecordingDuration(
      _UpdateRecordingDuration event, Emitter<RecordState> emit) {
    emit(
      state.copyWith(
        recordingDuration: event.recordingDuration,
      ),
    );
  }
}
