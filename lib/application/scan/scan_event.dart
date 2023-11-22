part of 'scan_bloc.dart';

/// ScanBloc's events
@freezed
class ScanEvent with _$ScanEvent {
  /// Take button pressed on ScanPage
  const factory ScanEvent.onPressedSubmitScan(CreditCard creditCard) =
      onPressedSubmitScan;

  /// Take button pressed on ScanPage
  const factory ScanEvent.onPressedTake() = onPressedTake;

  /// Retake button pressed on ScanPage
  const factory ScanEvent.onPressedRetake() = onPressedRetake;

  /// Request camera permission event
  const factory ScanEvent.onRequestCameraPermission() =
      onRequestCameraPermission;

  /// Initialize camera event
  const factory ScanEvent.onInitializeCamera() = onInitializeCamera;
}
