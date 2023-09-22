import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryLoading()) {
    on<HistoryInitial>((HistoryInitial event, Emitter<HistoryState> emit) {
      emit(HistoryLoading());
      try {
        if (state is HistoryLoaded) {}
      } catch (_) {
        emit(HistoryError());
      }
    });
  }
}
