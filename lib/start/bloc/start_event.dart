part of 'start_bloc.dart';

@freezed
sealed class StartEvent with _$StartEvent {
  const factory StartEvent.onStart() = onStart;
}
