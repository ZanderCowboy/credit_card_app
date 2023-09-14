import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'start_event.dart';
part 'start_state.dart';

class StartBloc extends Bloc<StartEvent, StartState> {
  StartBloc() : super(StartLoading()) {
    on<StartInitial>((event, emit) {
      // TODO: implement event handler
      _onStarted;
    });
  }

    Future<void> _onStarted(
    StartInitial event,
    Emitter<StartState> emit,
  ) async {
    emit(StartLoading());
  }
}
