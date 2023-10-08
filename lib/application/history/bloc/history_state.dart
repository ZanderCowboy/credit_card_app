part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    required CreditCard creditCard,
    required bool isLoading,
    required String? errorMessage,
  }) = _HistoryState;

  const HistoryState._();

  factory HistoryState.initial() => HistoryState(
        creditCard: CreditCard.empty(),
        isLoading: false,
        errorMessage: '',
      );
}
