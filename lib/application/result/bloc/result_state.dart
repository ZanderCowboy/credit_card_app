part of 'result_bloc.dart';

sealed class ResultState extends Equatable {
  const ResultState();

  @override
  List<Object> get props => [];
}

final class ResultLoading extends ResultState {}

final class ResultLoaded extends ResultState {}

final class ResultError extends ResultState {}

final class ResultAdded extends ResultState {}

class ResultNew extends ResultState {
  const ResultNew({required this.creditCard});

  final CreditCard creditCard;
}
