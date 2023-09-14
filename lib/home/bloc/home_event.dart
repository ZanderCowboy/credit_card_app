part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeEvent {}

final class HomeEnter extends HomeEvent {}

final class HomeScan extends HomeEvent {}

final class HomeHistory extends HomeEvent {}

final class HomeSettings extends HomeEvent {}


