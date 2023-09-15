part of 'history_bloc.dart';

sealed class HistoryState extends Equatable {
  const HistoryState();
  
  @override
  List<Object> get props => [];
}

final class HistoryLoading extends HistoryState {}

final class HistoryLoaded extends HistoryState {}

final class HistoryError extends HistoryState {}
