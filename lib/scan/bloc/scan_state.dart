part of 'scan_bloc.dart';

@freezed
sealed class ScanState with _$ScanState {
  const factory ScanState() = _ScanState;

  const ScanState._();

  const factory ScanState.initial() = Initial;
  const factory ScanState.loading() = Loading;
  const factory ScanState.loaded() = Loaded;
  const factory ScanState.error() = ErrorS;
  const factory ScanState.camera() = Camera;
  const factory ScanState.result() = Result;
}
