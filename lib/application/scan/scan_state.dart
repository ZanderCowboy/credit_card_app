part of 'scan_bloc.dart';

/// ScanBloc's states
@freezed
class ScanState with _$ScanState {
  /// ScanState constructor
  const factory ScanState({
    required CreditCard creditCard,
    required bool isLoading,
    required bool isSubmitted,
    required bool isCaptured,
    required bool isTake,
    required bool isRetake,
    required String? errorMessage,
  }) = _ScanState;

  /// Initial ScanState, giving all partial state's values
  factory ScanState.initial() => ScanState(
        creditCard: CreditCard.empty(),
        isLoading: false,
        isSubmitted: false,
        isCaptured: false,
        isTake: false,
        isRetake: false,
        errorMessage: '',
      );
}
