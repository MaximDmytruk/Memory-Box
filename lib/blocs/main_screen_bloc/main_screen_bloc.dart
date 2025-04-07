import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box/repositories/audio_repository.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final AudioRepository audioRepository;

  MainScreenBloc({
    required this.audioRepository,
  }) : super(MainScreenState()) {
    on<_GetAllAudios>(_getAllRecords);
  }

  void _getAllRecords(_GetAllAudios event, Emitter emit) async {
    emit(state.copyWith(status: MainScreenStatus.loading));
    List<String> audioList;

    audioList = await audioRepository.getAllAudios();

    emit(
      state.copyWith(
        status: MainScreenStatus.loaded,
        audioList: audioList,
      ),
    );
  }
}
