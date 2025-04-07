part of 'main_screen_bloc.dart';

enum MainScreenStatus {
  initial,
  loading,
  loaded,
}

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default(MainScreenStatus.initial) MainScreenStatus status,
    @Default([]) List<String> audioList,
  }) = _MainScreenState;
}
