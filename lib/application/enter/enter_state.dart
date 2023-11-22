part of 'enter_bloc.dart';

/// EnterBloc's states.
@freezed
class EnterState with _$EnterState {
  /// EnterState constructor
  const factory EnterState({
    required CreditCard creditCard,
    required bool isLoading,
    required bool isSaving,
    required bool isUnique,
    required bool isInvalid,
    required bool isDuplicate,
    required bool isCvvFocused,
    required String? errorMessage,
  }) = _EnterState;

  /// Initial EnterState, giving all partial state's values
  factory EnterState.initial() => EnterState(
        creditCard: CreditCard.empty(),
        isLoading: false,
        isSaving: false,
        isUnique: false,
        isInvalid: false,
        isDuplicate: false,
        isCvvFocused: false,
        errorMessage: '',
      );
}
