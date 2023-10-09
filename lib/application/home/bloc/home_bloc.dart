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
        await event.map(
          onEnter: (_) {
            emit(const HomeState.initial());
          },
          onScan: (_) {
            emit(const HomeState.initial());
          },
          onHistory: (_) {
            emit(const HomeState.initial());
          },
          onSettings: (_) {
            emit(const HomeState.initial());
          },
          onLogout: (_) {
            emit(const HomeState.initial());
          },
        );
      },
    );
  }
}
