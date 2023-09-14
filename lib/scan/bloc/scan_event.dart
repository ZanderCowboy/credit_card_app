part of 'scan_bloc.dart';

sealed class ScanEvent extends Equatable {
  const ScanEvent();

  @override
  List<Object> get props => [];
}

final class ScanInitial extends ScanEvent {}

final class ScanTake extends ScanEvent {}

final class ScanRetake extends ScanEvent {}

final class ScanSubmit extends ScanEvent {}


