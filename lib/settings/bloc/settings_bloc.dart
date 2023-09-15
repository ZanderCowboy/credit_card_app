import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsLoading()) {
    on<SettingsInitial>((SettingsInitial event, Emitter<SettingsState> emit) {
      // TODO: implement event handler
      emit(SettingsLoading());
      try {
        if (state is SettingsLoaded) {
          // TODO: Do something
        }
      } catch (_) {
        emit(SettingsError());
      }
    });
  }
}
