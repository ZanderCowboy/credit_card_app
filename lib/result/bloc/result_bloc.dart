import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'result_event.dart';
part 'result_state.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc() : super(ResultLoading()) {
    on<ResultInitial>((ResultInitial event, Emitter<ResultState> emit) {
      // TODO: implement event handler
      emit(ResultLoading());
      try {
        if (state is ResultLoaded) {
          // TODO: Do something
        }
      } catch (_) {
        emit(ResultError());
      }
    });
    on<ResultAdd>((ResultAdd event, Emitter<ResultState> emit) =>  ResultAdded());
  }
}
