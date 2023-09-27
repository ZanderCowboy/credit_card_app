part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState() = _HomeState;

  const HomeState._();

  const factory HomeState.initial() = Initial;

  const factory HomeState.loading() = Loading;

  const factory HomeState.error() = ErrorS;
}
