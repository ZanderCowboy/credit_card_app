part of 'enter_bloc.dart';

@freezed
class EnterState with _$EnterState {
  const factory EnterState({
    required CreditCard creditCard,
  }) = _EnterState;

  const EnterState._();

  // const factory EnterState.initial() = EnterInitial;
  factory EnterState.initial() => const EnterState(
          creditCard: CreditCard(
        cardNumber: '000',
        cardType: '000',
        cvvNumber: 000,
        issuingCountry: '000',
      ));

  // const factory EnterState.loading() = EnterLoading;
  // const factory EnterState.loaded() = EnterLoaded;
  // const factory EnterState.error() = EnterError;
  // CreditCard creditCard;

  const factory EnterState.valid() = EnterValid;
  // factory EnterState.valid() => const EnterState(
  //     creditCard: CreditCard(
  //         cardNumber: '', cardType: '', cvvNumber: 0, issuingCountry: ''));
  const factory EnterState.duplicate() = EnterDuplicate;
  // factory EnterState.duplicate() => const EnterState(
  //     creditCard: CreditCard(
  //         cardNumber: '', cardType: '', cvvNumber: 0, issuingCountry: ''));
  // const factory EnterState.cancel() = EnterCancel;
  factory EnterState.cancel() => EnterState(creditCard: CreditCard.empty());
  // const factory EnterState.submit() = EnterSubmit;
}
