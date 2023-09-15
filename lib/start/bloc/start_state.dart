part of 'start_bloc.dart';

sealed class StartState extends Equatable {
  const StartState();
  
  @override
  List<Object> get props => [];
}

final class StartLoading extends StartState {}

final class StartLoaded extends StartState {}

final class StartError extends StartState {}
