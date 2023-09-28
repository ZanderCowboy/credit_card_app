import 'package:bloc/bloc.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'enter_bloc.freezed.dart';
part 'enter_event.dart';
part 'enter_state.dart';

@Injectable()
class EnterBloc extends Bloc<EnterEvent, EnterState> {
  EnterBloc(this._creditCardRepository) : super(const EnterState.initial()) {
    on<EnterEvent>(
      ((event, emit) async {
        event.map(
          onValidate: (_) {
//             Implement Validation:
// In the BLoC, implement a validation method that checks if the entered credit
// card details are correct. You can use regular expressions to validate the card details.

            if (false) {
              emit(const EnterState.valid());
            } else {
              emit(const EnterState.initial());
              emit(const EnterState.duplicate());
            }
          },
          onCancel: (_) {
            emit(const EnterState.initial());
          },
          onSubmit: (_) {},
          onChanged: (_) {},
        );
      }),
    );
  }

  final ICreditCardRepository _creditCardRepository;
}
