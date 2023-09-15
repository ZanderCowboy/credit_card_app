part of 'app_bloc.dart';

final class AppState extends Equatable {
  const AppState();
  
  @override
  List<Object> get props => [];
}

final class AppLoading extends AppState {}

final class AppLoaded extends AppState {}

final class AppError extends AppState {}
