import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'result_bloc.freezed.dart';
part 'result_event.dart';
part 'result_state.dart';

@Injectable()
class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc() : super(ResultState.initial()) {
    on<ResultEvent>(
      (event, emit) {
        event.map(
          onFinish: (_) {},
          onCancel: (_) {},
        );
      },
    );
  }
}
