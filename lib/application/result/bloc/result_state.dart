part of 'result_bloc.dart';

@freezed
class ResultState with _$ResultState {
  const factory ResultState() = _ResultState;

  const ResultState._();

  const factory ResultState.initial() = ResultInitial;

  const factory ResultState.loading() = ResultLoading;

  const factory ResultState.loaded() = ResultLoaded;

  const factory ResultState.error() = ResultError;

  const factory ResultState.valid() = ResultValid;

  const factory ResultState.duplicate() = ResultDuplicate;
}
