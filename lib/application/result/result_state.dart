part of 'result_bloc.dart';

/// ResultBloc's states
@freezed
class ResultState with _$ResultState {
  /// ResultState constructor
  const factory ResultState() = _ResultState;

  /// Initial ResultState
  const factory ResultState.initial() = ResultInitial;
}
