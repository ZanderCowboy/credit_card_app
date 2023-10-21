part of 'scan_bloc.dart';

@freezed
class ScanEvent with _$ScanEvent {
  const factory ScanEvent.onSubmitScan(CreditCard creditCard) = onSubmitScan;
  const factory ScanEvent.onTake() = onTake;
  const factory ScanEvent.onRetake() = onRetake;
  const factory ScanEvent.onRequestCameraPermission() =
      onRequestCameraPermission;
  const factory ScanEvent.onInitializeCamera() = onInitializeCamera;
}
