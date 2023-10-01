part of 'enter_bloc.dart';

@freezed
class EnterEvent with _$EnterEvent {
  const factory EnterEvent.onValidate(CreditCard creditCard) = onValidate;
  const factory EnterEvent.onCancel() = onCancel;
  const factory EnterEvent.onSubmit(CreditCard creditCard) = onSubmit;
  const factory EnterEvent.onChanged() = onChanged;
}
