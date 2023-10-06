part of 'enter_bloc.dart';

@freezed
class EnterState with _$EnterState {
  const factory EnterState({
    required CreditCard creditCard,
    required bool isLoading,
    required bool isSaving,
    required bool isValid,
    required bool isDuplicate,
    required String? errorMessage,
  }) = _EnterState;

  const EnterState._();

  // const factory EnterState.initial() = EnterInitial;
  factory EnterState.initial() => EnterState(
        creditCard: CreditCard.empty(),
        isLoading: false,
        isSaving: false,
        isValid: false,
        isDuplicate: false,
        errorMessage: '',
      );
}