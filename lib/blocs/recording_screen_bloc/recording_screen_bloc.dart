import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recording_screen_event.dart';
part 'recording_screen_state.dart';
part 'recording_screen_bloc.freezed.dart';

class RecordingScreenBloc
    extends Bloc<RecordingScreenEvent, RecordingScreenState> {
  RecordingScreenBloc() : super(RecordingScreenState()) {
    on<_ToPlay>(_toPlay);
    on<_ToRecord>(_toRecord);
  }

  void _toPlay(
    _ToPlay event,
    Emitter<RecordingScreenState> emit,
  ) {
    if (state.status == RecordingScreenStatus.play) {
      return;
    } else {
      emit(
        state.copyWith(
          status: RecordingScreenStatus.play,
          audioPath: event.audioPath,
        ),
      );
    }
  }

  void _toRecord(
    _ToRecord event,
    Emitter<RecordingScreenState> emit,
  ) {
    if (state.status == RecordingScreenStatus.record) {
      return;
    } else {
      emit(
        state.copyWith(
          status: RecordingScreenStatus.record,
        ),
      );
    }
  }
}
