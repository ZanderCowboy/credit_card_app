
import 'package:bloc/bloc.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'enter_bloc.freezed.dart';
part 'enter_event.dart';
part 'enter_state.dart';

@Injectable()
class EnterBloc extends Bloc<EnterEvent, EnterState> {
  EnterBloc(this._creditCardRepository) : super(EnterState.initial()) {
    on<EnterEvent>(
      ((event, emit) async {
        // event.map(
        //   onSubmit: (value) {
        //     log('In EnterBloc: onValidate - event=$event \t emit=$emit');
        //     log('Credit Card: ${value.creditCard}');

        //     // _creditCardRepository.addCard(value.creditCard);
        //     log(_creditCardRepository.readHistoryCards().length.toString());

        //     bool invalid = isValid(value.creditCard);

        //     if (invalid) {
        //       emit(EnterState.initial());
        //       // emit(const EnterState.duplicate());
        //     } else {
        //       log('In if with true');
        //       // emit(const EnterState.valid());
        //       log('Emitted EnterState.valid()');
        //     }
        //   },
        //   onCancel: (_) {
        //     // emit(const EnterState.initial());
        //     log('*** Emitted EnterState.initial() in onCancel() ***');
        //   },
        //   onSubmit: (value) {
        //     _creditCardRepository.addCard(value.creditCard);
        //   },
        //   onChanged: (_) {},
        // );
      }),
    );
  }

  final ICreditCardRepository _creditCardRepository;

  bool isValid(CreditCard creditCard) {
    List<CreditCard> list = _creditCardRepository.readHistoryCards();

    return list.contains(creditCard);
  }
}
