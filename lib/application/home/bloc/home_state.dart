part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState() = _HomeState;

  const HomeState._();

  const factory HomeState.initial() = Initial;

  const factory HomeState.loading() = HomeLoading;

  const factory HomeState.loaded() = HomeLoaded;

  const factory HomeState.error() = HomeError;
}
