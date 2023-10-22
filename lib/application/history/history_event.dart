part of 'history_bloc.dart';

/// HistoryBloc's events
@freezed
class HistoryEvent with _$HistoryEvent {
  /// Initial event
  const factory HistoryEvent.onInitial() = onInitial;
}
