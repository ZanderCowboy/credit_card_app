part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.onCardDelete(CreditCard creditCard) = onCardDelete;
}
