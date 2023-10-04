part of 'enter_bloc.dart';

@freezed
class EnterEvent with _$EnterEvent {
  const factory EnterEvent.onSubmit() = onSubmit;
  const factory EnterEvent.onCancel() = onCancel;

  const factory EnterEvent.onChangedNumber(String text) = onChangedNumber;
  const factory EnterEvent.onChangedCardType(String text) = onChangedCardType;
  const factory EnterEvent.onChangedCVV(String text) = onChangedCvv;
  const factory EnterEvent.onChangedCountry(String text) = onChangedCountry;
}
