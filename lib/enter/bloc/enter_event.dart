part of 'enter_bloc.dart';

@freezed
sealed class EnterEvent with _$EnterEvent {
  const factory EnterEvent.onSubmit() = onSubmit;
  const factory EnterEvent.onChanged() = onChanged;
}
