import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'enter_event.dart';
part 'enter_state.dart';

class EnterBloc extends Bloc<EnterEvent, EnterState> {
  EnterBloc() : super(EnterLoading()) {
    on<EnterInitial>(_onStarted);

    on<EnterSubmit>(
      (EnterSubmit event, Emitter<EnterState> emit) {
        // emit(EnterResult());
      },
    );
    on<EnterPressed>((event, emit) => EnterInitial());
  }

  Future<void> _onStarted(
    EnterInitial event,
    Emitter<EnterState> emit,
  ) async {
    emit(EnterLoading());
    try {
      emit(EnterLoaded());

      // if (state is EnterLoaded) {
      //   // TODO: Do something
      // }
    } catch (_) {
      emit(EnterError());
    }
  }

  Future<void> _onEnterPressed(
    EnterPressed event,
    Emitter<EnterState> emit,
  ) async {
    if (state is EnterLoaded) {
      try {
        
      } catch (_) {
        emit(EnterError());
      }
    }
  }

  
}
