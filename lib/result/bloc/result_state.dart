part of 'result_bloc.dart';

@freezed
sealed class ResultState with _$ResultState {
  const factory ResultState() = _ResultState;

  const ResultState._();

  const factory ResultState.initial() = Initial;

  const factory ResultState.loading() = Loading;

  const factory ResultState.loaded() = Loaded;

  const factory ResultState.error() = ErrorS;
}
