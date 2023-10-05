import 'package:bloc/bloc.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'result_bloc.freezed.dart';
part 'result_event.dart';
part 'result_state.dart';

@Injectable()
class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc(this._creditCardRepository) : super(const ResultState.loading()) {
    on<ResultEvent>(
      (event, emit) {
        event.map(
          onFinish: (_) {},
          onCancel: (_) {},
        );
      },
    );
  }

  final ICreditCardRepository _creditCardRepository;
}
