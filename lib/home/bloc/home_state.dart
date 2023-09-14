part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
  
  @override
  List<Object> get props => [];
}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {}

final class HomeError extends HomeState {}

final class HomeEnterLoad extends HomeState {}

final class HomeScanLoad extends HomeState {}

final class HomeHistoryLoad extends HomeState {}

