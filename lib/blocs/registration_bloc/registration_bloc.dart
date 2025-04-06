import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationState()) {
    on<_RegisterPhoneNumber>(_registerPhoneNumber);
  }

  void _registerPhoneNumber(_RegisterPhoneNumber event, Emitter emit) {}
}
