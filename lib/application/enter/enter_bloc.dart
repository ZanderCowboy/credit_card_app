import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:credit_card_app/constants/credit_card_number_patterns.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'enter_bloc.freezed.dart';
part 'enter_event.dart';
part 'enter_state.dart';

/// EnterBloc for Enter page
@Injectable()
class EnterBloc extends Bloc<EnterEvent, EnterState> {
  /// EnterBloc constructor
  EnterBloc(this._creditCardRepository) : super(EnterState.initial()) {
    on<EnterEvent>(
      (event, emit) {
        event.map(
          onPressedValidateEnter: (value) {
            emit(state.copyWith(isLoading: true));

            final returnValues = _cardValidation(state.creditCard);
            if (returnValues[0] == false) {
              emit(
                state.copyWith(
                  errorMessage: returnValues[1] as String,
                ),
              );
            } else {
              final hasDuplicate =
                  _creditCardRepository.hasCreditCard(value.creditCard);

              if (hasDuplicate) {
                emit(state.copyWith(isDuplicate: true));
              } else {
                emit(state.copyWith(isUnique: true));

                final isValidDetails = _isValid(state.creditCard);

                if (isValidDetails) {
                  emit(
                    state.copyWith(
                      creditCard: state.creditCard.copyWith(
                        cardNumber: state.creditCard.cardNumber,
                        cardType: state.creditCard.cardType,
                        cvvNumber: state.creditCard.cvvNumber,
                        issuingCountry: state.creditCard.issuingCountry,
                        isValid: isValidDetails,
                      ),
                    ),
                  );
                } else {
                  emit(
                    state.copyWith(
                      creditCard: state.creditCard.copyWith(
                        isValid: isValidDetails,
                      ),
                      isInvalid: true,
                      errorMessage: 'The details provided are not valid',
                    ),
                  );
                }
              }

              emit(
                state.copyWith(
                  isLoading: false,
                  isDuplicate: false,
                  isUnique: false,
                  isInvalid: false,
                ),
              );
            }
          },
          onPressedSubmitEnter: (_) {
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
                  errorMessage: 'The details provided are not valid',
                ),
              );
            }

            emit(state.copyWith(isSaving: false));
          },
          onPressedCancelEnter: (_) {
            emit(EnterState.initial());
          },
          onChangedCardNumber: (value) {
            emit(
              state.copyWith(
                isLoading: true,
                isCvvFocused: false,
                errorMessage: null,
              ),
            );
            emit(
              state.copyWith(
                creditCard: state.creditCard.copyWith(
                  cardNumber: value.text,
                ),
              ),
            );

            final cardTypes = _detectCCType(value.text);
            log('cardTypes=${cardTypes.name}');

            final isValidTextValue = _isValid(state.creditCard);
            emit(
              state.copyWith(
                creditCard: state.creditCard.copyWith(
                  cardType: cardTypes.name,
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
          onChangedCvvNumber: (value) {
            emit(
              state.copyWith(
                isLoading: true,
                errorMessage: null,
              ),
            );
            if (value.text.isNotEmpty) {
              emit(
                state.copyWith(
                  creditCard: state.creditCard.copyWith(cvvNumber: value.text),
                  isCvvFocused: true,
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
          onChangedIssuingCountry: (value) {
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
          onTapCardNumber: (value) {
            emit(state.copyWith(isCvvFocused: false));
          },
          onTapCardType: (value) {
            emit(state.copyWith(isCvvFocused: false));
          },
          onTapCvvNumber: (_) {
            emit(state.copyWith(isCvvFocused: true));
          },
          onTapIssuingCountry: (value) {
            emit(state.copyWith(isCvvFocused: false));
          },
        );
      },
    );
  }

  final ICreditCardRepository _creditCardRepository;

  bool _isValid(
    CreditCard creditCard,
  ) {
    return creditCard.cardNumber.isNotEmpty &&
        creditCard.cardType.isNotEmpty &&
        creditCard.cvvNumber.isNotEmpty &&
        creditCard.issuingCountry.isNotEmpty;
  }

  List<Object> _cardValidation(CreditCard creditCard) {
    // cardNumber
    final cardNumber = creditCard.cardNumber;
    if (cardNumber.isEmpty) {
      return [false, 'Card number can not be empty.'];
    } else if (!RegExp(r'^[0-9]{16,}$').hasMatch(cardNumber)) {
      return [false, 'Card number needs to have at least 16 digits.'];
    }

    // cardCVV
    final cvvNumber = creditCard.cvvNumber;
    if (!RegExp(r'^[0-9]{3,4}$').hasMatch(cvvNumber)) {
      return [false, 'CVV number is either 3 or 4 digits.'];
    }

    return [true, ''];
  }
}

CardTypes _detectCCType(String cardNumber) {
  //Default card type is other
  var cardType = CardTypes.otherBrand;

  if (cardNumber.isEmpty) {
    return cardType;
  }

  cardNumPatterns.forEach(
    (CardTypes type, Set<List<String>> patterns) {
      for (final patternRangeList in patterns) {
        // Remove any spaces
        var ccPatternStr = cardNumber.replaceAll(RegExp(r'\s+\b|\b\s'), '');
        final rangeLen = patternRangeList[0].length;
        // Trim the Credit Card number string to match the pattern prefix length
        if (rangeLen < cardNumber.length) {
          ccPatternStr = ccPatternStr.substring(0, rangeLen);
        }

        if (patternRangeList.length > 1) {
          // Convert the prefix range into numbers then make sure the
          // Credit Card num is in the pattern range.
          // Because Strings don't have '>=' type operators
          final ccPrefixAsInt = int.parse(ccPatternStr);
          final startPatternPrefixAsInt = int.parse(patternRangeList[0]);
          final endPatternPrefixAsInt = int.parse(patternRangeList[1]);
          if (ccPrefixAsInt >= startPatternPrefixAsInt &&
              ccPrefixAsInt <= endPatternPrefixAsInt) {
            // Found a match
            cardType = type;
            break;
          }
        } else {
          // Just compare the single pattern prefix with the Credit Card prefix
          if (ccPatternStr == patternRangeList[0]) {
            // Found a match
            cardType = type;
            break;
          }
        }
      }
    },
  );

  return cardType;
}
