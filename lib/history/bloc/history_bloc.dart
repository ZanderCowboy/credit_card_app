import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryLoading()) {
    on<HistoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
