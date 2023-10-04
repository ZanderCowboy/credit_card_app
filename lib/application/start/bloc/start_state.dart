part of 'start_bloc.dart';

@freezed
class StartState with _$StartState {
  const factory StartState() = _StartState;

  const StartState._();

  const factory StartState.initial() = Initial;

  const factory StartState.loading() = Loading;
}