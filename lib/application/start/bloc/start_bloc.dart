import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'start_bloc.freezed.dart';
part 'start_event.dart';
part 'start_state.dart';

@Injectable()
class StartBloc extends Bloc<StartEvent, StartState> {
  StartBloc() : super(StartState.initial()) {
    on<StartEvent>((event, emit) {
      event.map(
        onStart: (_) {
          // nothing is required here. Only page navigation, which happens in the UI
          emit(state.copyWith(isLoading: true, errorMessage: null));
          emit(StartState.initial());
          emit(state.copyWith(isLoading: false, errorMessage: null));
        },
      );
    });
  }
}
