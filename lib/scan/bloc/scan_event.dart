part of 'scan_bloc.dart';

@freezed
sealed class ScanEvent with _$ScanEvent {
  const factory ScanEvent.onSubmit() = onSubmit;
  const factory ScanEvent.onTake() = onTake;
  const factory ScanEvent.onRetake() = onRetake;
}
