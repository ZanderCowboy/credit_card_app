part of 'app_bloc.dart';

enum AppStatus {
  start,
  home,
//   enter,
}

final class AppState extends Equatable {
  const AppState._({
    required this.status,
  });

  const AppState.start() : this._(status: AppStatus.start);

  const AppState.home() : this._(status: AppStatus.home);

  final AppStatus status;
  
  @override
  List<Object> get props => [];
}

final class AppInitial extends AppState {
  const AppInitial.start() : super.start();
}

