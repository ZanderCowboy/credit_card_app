part of 'result_bloc.dart';

@freezed
class ResultState with _$ResultState {
  const factory ResultState() = _ResultState;

  const ResultState._();

  const factory ResultState.initial() = ResultInitial;
}
