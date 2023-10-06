import 'package:bloc/bloc.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

@Injectable()
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(this._creditCardRepository) : super(HistoryState.initial()) {
    on<HistoryEvent>((event, emit) async {
      await event.map(
        onCardDelete: (value) async {
          emit(state.copyWith(isLoading: true));

          final indexAt = _creditCardRepository.lookupCard(value.creditCard);
          await _creditCardRepository.deleteCreditCardAt(indexAt);

          emit(state.copyWith(isDeleted: true, isLoading: false));
        },
      );
    });
  }

  final ICreditCardRepository _creditCardRepository;
}
