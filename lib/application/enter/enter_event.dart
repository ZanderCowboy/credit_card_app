part of 'enter_bloc.dart';

@freezed
class EnterEvent with _$EnterEvent {
  const factory EnterEvent.onValidateEnter(CreditCard creditCard) =
      onValidateEnter;
  const factory EnterEvent.onSubmitEnter() = onSubmitEnter;
  const factory EnterEvent.onCancelEnter() = onCancelEnter;

  const factory EnterEvent.onChangedCardNumber(String text) = onChangedNumber;
  const factory EnterEvent.onChangedCardType(String text) = onChangedCardType;
  const factory EnterEvent.onChangedCvvNumber(String text) = onChangedCvv;
  const factory EnterEvent.onChangedIssuingCountry(String text) =
      onChangedCountry;

  const factory EnterEvent.onTapCardNumber() = onTapCardNumber;
  const factory EnterEvent.onTapCardType() = onTapCardType;
  const factory EnterEvent.onTapCvvNumber() = onTapCvvNumber;
  const factory EnterEvent.onTapIssuingCountry() = onTapIssuingCountry;
}
