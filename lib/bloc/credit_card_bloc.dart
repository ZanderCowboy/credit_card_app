import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'credit_card_event.dart';
part 'credit_card_state.dart';

class CreditCardBloc extends Bloc<CreditCardEvent, CreditCardState> {
  CreditCardBloc() : super(CreditCardInitial()) {
    on<CreditCardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
