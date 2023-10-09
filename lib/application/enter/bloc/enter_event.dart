part of 'enter_bloc.dart';

@freezed
class EnterEvent with _$EnterEvent {
  const factory EnterEvent.onValidate(CreditCard creditCard) = onValidate;
  const factory EnterEvent.onSubmit() = onSubmit;
  const factory EnterEvent.onCancel() = onCancel;

  const factory EnterEvent.onChangedCardNumber(String text) = onChangedNumber;
  const factory EnterEvent.onChangedCardType(String text) = onChangedCardType;
  const factory EnterEvent.onChangedCvvNumber(String text) = onChangedCvv;
  const factory EnterEvent.onChangedIssuingCountry(String text) =
      onChangedCountry;
}
