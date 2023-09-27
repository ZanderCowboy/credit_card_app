import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'enter_event.dart';
part 'enter_state.dart';

class EnterBloc extends Bloc<EnterEvent, EnterState> {
  EnterBloc() : super(EnterLoading()) {
    on<EnterInitial>(((event, emit) {
      emit(EnterLoading());
      try {
        emit(EnterLoaded());
      } catch (_) {
        emit(EnterError());
      }
    }));
    // on<EnterPressed>(_onEnterPressed);

    on<EnterSubmit>(
      (EnterSubmit event, Emitter<EnterState> emit) {
        // emit(EnterResult());
      },
    );
  }

  // Future<void> _onEnterPressed(
  //   EnterPressed event,
  //   Emitter<EnterState> emit,
  // ) async {
  //   if (state is EnterLoaded) {
  //     try {
  //       // do something
  //     } catch (_) {
  //       emit(EnterError());
  //     }
  //   }
  // }

  Stream<EnterState> mapEventToState(EnterEvent event) async* {
    if (event is EnterInitial) {
      yield EnterLoaded();
    }
    if (event is EnterSubmit) {
      yield EnterLoading();
    }
  }
}
