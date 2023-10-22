part of 'home_bloc.dart';

/// HomeBloc's states
@freezed
class HomeState with _$HomeState {
  /// HomeState constructor
  const factory HomeState() = _HomeState;

  /// Initial HomeState
  const factory HomeState.initial() = Initial;
}
