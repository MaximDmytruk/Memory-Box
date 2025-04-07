import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_screen_event.dart';
part 'profile_screen_state.dart';
part 'profile_screen_bloc.freezed.dart';

class ProfileScreenBloc extends Bloc<ProfileScreenEvent, ProfileScreenState> {
  ProfileScreenBloc() : super(ProfileScreenState()) {
    on<_OnEditMode>(_onEditMode);
    on<_OffEditMode>(_offEditMode);
  }

  void _onEditMode(_OnEditMode event, Emitter emit) {
    emit(
      state.copyWith(
        status: ProfileScreenStatus.edit,
        editModeOn: true,
      ),
    );
  }

  void _offEditMode(_OffEditMode event, Emitter emit) {
    emit(
      state.copyWith(
        status: ProfileScreenStatus.loaded,
        editModeOn: false,
      ),
    );
  }

  
}
