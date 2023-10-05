import 'dart:developer';

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
          onValidate: (value) {
            emit(state.copyWith(isLoading: true));

            bool hasDuplicate =
                _creditCardRepository.hasCreditCard(value.creditCard);

            if (hasDuplicate) {
              emit(state.copyWith(isDuplicate: true));
            } else {
              emit(state.copyWith(isValid: true));

              emit(
                state.copyWith(
                  creditCard: state.creditCard.copyWith(
                    cardNumber: state.creditCard.cardNumber,
                    cardType: state.creditCard.cardType,
                    cvvNumber: state.creditCard.cvvNumber,
                    issuingCountry: state.creditCard.issuingCountry,
                    isValid: state.creditCard.isValid,
                  ),
                ),
              );
            }

            emit(state.copyWith(
                isLoading: false, isDuplicate: false, isValid: false));
          },
          onSubmit: (_) async {
            log('in onSumbit in bloc');
            emit(state.copyWith(isSaving: true, errorMessage: null));

            final isValidTextValue = _isValid(state.creditCard);
            if (isValidTextValue) {
              _creditCardRepository.addCard(state.creditCard);
              emit(
                state.copyWith(
                  creditCard: state.creditCard.copyWith(
                    isValid: isValidTextValue,
                  ),
                ),
              );
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
          onCancel: (_) {
            emit(EnterState.initial());
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
                  creditCard: state.creditCard.copyWith(cvvNumber: value.text),
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
        creditCard.cvvNumber.isNotNullAndNotEmpty;
    List<CreditCard> list = _creditCardRepository.readHistoryCards();

    return list.contains(creditCard);
  }
}
