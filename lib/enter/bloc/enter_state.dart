part of 'enter_bloc.dart';

@freezed
class EnterState with _$EnterState {
  const factory EnterState({
    required CreditCard creditCard,
    required bool isLoading,
    required bool isSaving,
    required String? errorMessage,
  }) = _EnterState;

  const EnterState._();

  // const factory EnterState.initial() = EnterInitial;
  factory EnterState.initial() => const EnterState(
      creditCard: CreditCard(
        cardNumber: '000',
        cardType: '000',
        cvvNumber: 000,
        issuingCountry: '000',
        isValid: false,
      ),
      isLoading: false,
      isSaving: false,
      errorMessage: '');

  factory EnterState.reset() => EnterState(
      creditCard: CreditCard.empty(),
      isLoading: false,
      isSaving: false,
      errorMessage: '');
  // const factory EnterState.submit() = EnterSubmit;
}
