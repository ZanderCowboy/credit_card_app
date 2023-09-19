part of 'enter_bloc.dart';

sealed class EnterState extends Equatable {
  const EnterState();
  
  @override
  List<Object> get props => [];
}

final class EnterLoading extends EnterState {}

final class EnterLoaded extends EnterState {}

final class EnterError extends EnterState {} 

// final class EnterResult extends EnterState {}

