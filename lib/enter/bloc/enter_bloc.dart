import 'dart:developer';

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
        event.map(
          onValidate: (value) {
            log('In EnterBloc: onValidate - event=$event \t emit=$emit');
            log('Credit Card: ${value.creditCard}');

            // _creditCardRepository.addCard(value.creditCard);
            log(_creditCardRepository.readHistoryCards().length.toString());

            // final CreditCard creditCard = eve

            // final CreditCard creditCard = state.creditCard;

            // Implement Validation:
            // In the BLoC, implement a validation method that checks if the entered credit
            // card details are correct. You can use regular expressions to validate the card details.

            if (true) {
              log('In if with true');
              emit(const EnterState.valid());
              log('Emitted EnterState.valid()');
            } else {
              emit(EnterState.initial());
              emit(const EnterState.duplicate());
            }
          },
          onCancel: (_) {
            // emit(const EnterState.initial());
            log('*** Emitted EnterState.initial() in onCancel() ***');
          },
          onSubmit: (value) {
            _creditCardRepository.addCard(value.creditCard);
          },
          onChanged: (_) {},
        );
      }),
    );
  }

  final ICreditCardRepository _creditCardRepository;
}
