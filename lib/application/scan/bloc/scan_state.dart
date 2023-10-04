part of 'scan_bloc.dart';

sealed class ScanState extends Equatable {
  const ScanState();
  
  @override
  List<Object> get props => [];
}

final class ScanLoading extends ScanState {}

final class ScanLoaded extends ScanState {}

final class ScanError extends ScanState {}

final class ScanCamera extends ScanState {}

final class ScanResult extends ScanState {}
