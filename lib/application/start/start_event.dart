part of 'start_bloc.dart';

/// Event for Bloc of Start Page
@freezed
class StartEvent with _$StartEvent {
  const factory StartEvent.onStart() = onStart;
}
