import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoading()) {
    on<HomeInitial>(_onStarted);
    on<HomeEnter>((HomeEnter event, Emitter<HomeState> emit) {
      emit(HomeEnterLoad());
    });
    on<HomeScan>((HomeScan event, Emitter<HomeState> emit) {
      emit(HomeScanLoad());
    });
  }

  Future<void> _onStarted(HomeInitial event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
  }
  
}
