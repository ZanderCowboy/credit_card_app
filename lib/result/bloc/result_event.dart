part of 'result_bloc.dart';

sealed class ResultEvent extends Equatable {
  const ResultEvent();

  @override
  List<Object> get props => [];
}

final class ResultInitial extends ResultEvent {}

final class ResultAdd extends ResultEvent {}

