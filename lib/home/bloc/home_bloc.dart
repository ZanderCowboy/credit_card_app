import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        event.map(
          onEnter: (_) {
            emit(const HomeState.loading());
          },
          onScan: (_) {
            emit(const HomeState.loading());
          },
          onHistory: (_) {
            emit(const HomeState.loading());
          },
          onSettings: (_) async {
            // await Future.delayed(const Duration(seconds: 5));
            emit(const HomeState.loading());
            emit(const HomeState.initial());
          },
          onLogout: (_) {
            emit(const HomeState.loading());
          },
        );
      },
    );
  }
}

// class HomeBloc extends Bloc<HomeEvent, HomeState> {
//   HomeBloc() : super(HomeLoading()) {
//     on<HomeInitial>(_onStarted);
//     on<HomeEnter>(_onHomeEnter);
//     // on<HomeScan>(_onHomeScan);
//   }

  // final CreditCardRepository creditCardRepository;

  // Future<void> _onStarted(
  //   HomeInitial event,
  //   Emitter<HomeState> emit,
  // ) async {
  //   emit(HomeLoading());
  //   try {
  //     // do something with the repository
  //     emit(HomeLoaded());
  //   } catch (e) {
  //     emit(HomeError());
  //   }
  // }

  // Future<void> _onHomeEnter(HomeEnter event, Emitter<HomeState> emit) async {
  //   // emit(HomeEnterLoad());
  //   emit(HomeLoaded());
  // }

  // Future<void> _onHomeScan(HomeScan event, Emitter<HomeState> emit) async {
  //   emit(HomeScanLoad());
  // }
// }
