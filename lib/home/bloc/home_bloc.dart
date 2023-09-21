import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoading()) {
    on<HomeInitial>(_onStarted);
    on<HomeEnter>(_onHomeEnter);
    // on<HomeScan>(_onHomeScan);
  }

  // final CreditCardRepository creditCardRepository;

  Future<void> _onStarted(
    HomeInitial event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());
    try {
      // do something with the repository
      emit(HomeLoaded());
    } catch (e) {
      emit(HomeError());
    }
  }

  Future<void> _onHomeEnter(HomeEnter event, Emitter<HomeState> emit) async {
    // emit(HomeEnterLoad());
    emit(HomeLoaded());
  }

  // Future<void> _onHomeScan(HomeScan event, Emitter<HomeState> emit) async {
  //   emit(HomeScanLoad());
  // }
}
