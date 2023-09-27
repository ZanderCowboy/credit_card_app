import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'start_bloc.freezed.dart';
part 'start_event.dart';
part 'start_state.dart';

@Injectable()
class StartBloc extends Bloc<StartEvent, StartState> {
  StartBloc() : super(const StartState.initial()) {
    on<StartEvent>((event, emit) async {
      event.map(onStart: (_) {
        emit(const StartState.loading());
        // Future.delayed(
        //   const Duration(seconds: 5),
        // );
      });
    });
  }
}
