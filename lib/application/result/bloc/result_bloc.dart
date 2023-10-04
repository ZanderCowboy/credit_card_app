import 'package:bloc/bloc.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:equatable/equatable.dart';

part 'result_event.dart';
part 'result_state.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc() : super(ResultLoading()) {
    on<ResultInitial>((event, emit) {
      emit(ResultLoading());
      try {
        if (state is ResultLoaded) {}
      } catch (_) {
        emit(ResultError());
      }
    });
    on<ResultAdd>(
        (ResultAdd event, Emitter<ResultState> emit) => ResultAdded());

    on<ResultNewCard>((event, emit) => ResultNew(creditCard: event.card));
  }
}
