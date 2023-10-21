part of 'scan_bloc.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState({
    required CreditCard creditCard,
    required bool isLoading,
    required bool isSubmitted,
    required bool isCaptured,
    required bool isTake,
    required bool isRetake,
    required String? errorMessage,
  }) = _ScanState;

  const ScanState._();

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
