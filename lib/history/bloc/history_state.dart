part of 'history_bloc.dart';

@freezed
sealed class HistoryState with _$HistoryState {
  const factory HistoryState() = _HistoryState;

  const HistoryState._();

  const factory HistoryState.initial() = Initial;
  const factory HistoryState.loading() = Loading;
  const factory HistoryState.loaded() = Loaded;
  const factory HistoryState.error() = ErrorS;
}
