import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'enter_event.dart';
part 'enter_state.dart';

class EnterBloc extends Bloc<EnterEvent, EnterState> {
  EnterBloc() : super(EnterLoading()) {
    on<EnterInitial>(
      (EnterInitial event, Emitter<EnterState> emit) {
        emit(EnterLoading());
        // TODO: implement event handler
        try {
          if (state is EnterLoaded) {
            // TODO: Do something
          }
        } catch (_) {
          emit(EnterError());
        }
      },
    );
    on<EnterSubmit>(
      (EnterSubmit event, Emitter<EnterState> emit) {
        emit(EnterResult());
      },
    );
  }
}
