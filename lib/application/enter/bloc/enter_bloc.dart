import 'package:bloc/bloc.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:flutter_credit_card/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'enter_bloc.freezed.dart';
part 'enter_event.dart';
part 'enter_state.dart';

@Injectable()
class EnterBloc extends Bloc<EnterEvent, EnterState> {
  EnterBloc(this._creditCardRepository) : super(EnterState.initial()) {
    on<EnterEvent>(
      (event, emit) {
        event.map(
          onCancel: (_) {
            emit(EnterState.initial());
          },
          onSubmit: (_) {
            emit(state.copyWith(isSaving: true, errorMessage: null));

            final isValidTextValue = _isValid(state.creditCard);
            if (isValidTextValue) {
              emit(
                state.copyWith(
                  creditCard: state.creditCard.copyWith(
                    isValid: isValidTextValue,
                  ),
                ),
              );
              _creditCardRepository.addCard(state.creditCard);
            } else {
              emit(
                state.copyWith(
                    creditCard: state.creditCard.copyWith(
                      isValid: isValidTextValue,
                    ),
                    errorMessage: 'The details provided are not valid'),
              );
            }

            emit(state.copyWith(isSaving: false));
          },
          onChangedNumber: (value) {
            emit(state.copyWith(isLoading: true, errorMessage: null));
            emit(
              state.copyWith(
                creditCard: state.creditCard.copyWith(
                  cardNumber: value.text,
                ),
              ),
            );
            final isValidTextValue = _isValid(state.creditCard);
            emit(
              state.copyWith(
                creditCard: state.creditCard.copyWith(
                  isValid: isValidTextValue,
                ),
              ),
            );
            emit(state.copyWith(isLoading: false));
          },
          onChangedCardType: (value) {
            emit(state.copyWith(isLoading: true, errorMessage: null));
            emit(
              state.copyWith(
                creditCard: state.creditCard.copyWith(
                  cardType: value.text,
                ),
              ),
            );
            final isValidTextValue = _isValid(state.creditCard);
            emit(
              state.copyWith(
                creditCard: state.creditCard.copyWith(
                  isValid: isValidTextValue,
                ),
              ),
            );
            emit(state.copyWith(isLoading: false));
          },
          onChangedCVV: (value) {
            emit(state.copyWith(isLoading: true, errorMessage: null));
            if (value.text.isNotEmpty) {
              emit(
                state.copyWith(
                  creditCard: state.creditCard.copyWith(
                      cvvNumber: int.parse(
                    value.text,
                  )),
                ),
              );
            }

            final isValidTextValue = _isValid(state.creditCard);
            emit(
              state.copyWith(
                creditCard: state.creditCard.copyWith(
                  isValid: isValidTextValue,
                ),
              ),
            );
            emit(state.copyWith(isLoading: false));
          },
          onChangedCountry: (value) {
            emit(state.copyWith(isLoading: true, errorMessage: null));
            emit(
              state.copyWith(
                creditCard: state.creditCard.copyWith(
                  issuingCountry: value.text,
                ),
              ),
            );
            final isValidTextValue = _isValid(state.creditCard);
            emit(
              state.copyWith(
                creditCard: state.creditCard.copyWith(
                  isValid: isValidTextValue,
                ),
              ),
            );
            emit(state.copyWith(isLoading: false));
          },
        );
      },
    );
  }

  final ICreditCardRepository _creditCardRepository;

  bool _isValid(CreditCard creditCard) {
    return creditCard.cardNumber.isNotNullAndNotEmpty &&
        creditCard.cardType.isNotNullAndNotEmpty &&
        creditCard.cvvNumber > 0;
    List<CreditCard> list = _creditCardRepository.readHistoryCards();

    return list.contains(creditCard);
  }
}


// import 'package:bloc/bloc.dart';
// import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
// import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';

// part 'enter_bloc.freezed.dart';
// part 'enter_event.dart';
// part 'enter_state.dart';

// @Injectable()
// class EnterBloc extends Bloc<EnterEvent, EnterState> {
//   EnterBloc(this._creditCardRepository) : super(EnterState.initial()) {
//     on<EnterEvent>(
//       ((event, emit) async {
//         // event.map(
//         //   onValidate: (value) {
//         //     log('In EnterBloc: onValidate - event=$event \t emit=$emit');
//         //     log('Credit Card: ${value.creditCard}');

//         //     // _creditCardRepository.addCard(value.creditCard);
//         //     log(_creditCardRepository.readHistoryCards().length.toString());

//         //     bool invalid = isValid(value.creditCard);

//         //     if (invalid) {
//         //       emit(EnterState.initial());
//         //       emit(const EnterState.duplicate());
//         //     } else {
//         //       log('In if with true');
//         //       emit(const EnterState.valid());
//         //       log('Emitted EnterState.valid()');
//         //     }
//         //   },
//         //   onCancel: (_) {
//         //     // emit(const EnterState.initial());
//         //     log('*** Emitted EnterState.initial() in onCancel() ***');
//         //   },
//         //   onSubmit: (value) {
//         //     _creditCardRepository.addCard(value.creditCard);
//         //   },
//         //   onChanged: (_) {},
//         // );
//       }),
//     );
//   }

//   final ICreditCardRepository _creditCardRepository;

//   bool isValid(CreditCard creditCard) {
//     List<CreditCard> list = _creditCardRepository.readHistoryCards();

//     return list.contains(creditCard);
//   }
// }


