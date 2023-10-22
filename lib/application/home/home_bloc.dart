import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

/// Bloc for HomePage
@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// HomeBloc constructor
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        event.map(
          onPressedEnter: (_) {
            emit(const HomeState.initial());
          },
          onPressedScan: (_) {
            emit(const HomeState.initial());
          },
          onPressedHistory: (_) {
            emit(const HomeState.initial());
          },
          onPressedSettings: (_) {
            emit(const HomeState.initial());
          },
          onPressedLogout: (_) {
            emit(const HomeState.initial());
          },
        );
      },
    );
  }
}
