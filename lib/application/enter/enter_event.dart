part of 'enter_bloc.dart';

/// EnterBloc's events
@freezed
class EnterEvent with _$EnterEvent {
  /// Validate button pressed on Enter page
  const factory EnterEvent.onPressedValidateEnter(CreditCard creditCard) =
      onPressedValidateEnter;

  /// Submit button pressed on Enter page
  const factory EnterEvent.onPressedSubmitEnter() = onSubmitPressedEnter;

  /// Cancel button pressed on Enter page
  const factory EnterEvent.onPressedCancelEnter() = onCancelPressedEnter;

  /// Card number changed on Enter page
  const factory EnterEvent.onChangedCardNumber(String text) = onChangedNumber;

  /// Card type changed on Enter page
  const factory EnterEvent.onChangedCardType(String text) = onChangedCardType;

  /// CVV number changed on Enter page
  const factory EnterEvent.onChangedCvvNumber(String text) = onChangedCvv;

  /// Issuing country changed on Enter page
  const factory EnterEvent.onChangedIssuingCountry(String text) =
      onChangedCountry;

  /// Card number field tapped on Enter page
  const factory EnterEvent.onTapCardNumber() = onTapCardNumber;

  /// Card type field tapped on Enter page
  const factory EnterEvent.onTapCardType() = onTapCardType;

  /// CVV number field tapped on Enter page
  const factory EnterEvent.onTapCvvNumber() = onTapCvvNumber;

  /// Issuing country field tapped on Enter page
  const factory EnterEvent.onTapIssuingCountry() = onTapIssuingCountry;
}
