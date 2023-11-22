import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'result_bloc.freezed.dart';
part 'result_event.dart';
part 'result_state.dart';

/// Bloc for ResultPage
@Injectable()
class ResultBloc extends Bloc<ResultEvent, ResultState> {
  /// ResultBloc constructor
  ResultBloc() : super(const ResultState.initial()) {
    on<ResultEvent>(
      (event, emit) {
        event.map(
          onPressedValidate: (_) {},
          onPressedSubmit: (_) {},
          onPressedCancel: (_) {},
        );
      },
    );
  }
}
