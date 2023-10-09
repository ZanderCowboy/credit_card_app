import 'package:bloc/bloc.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'scan_bloc.freezed.dart';
part 'scan_event.dart';
part 'scan_state.dart';

@Injectable()
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc(this._creditCardRepository) : super(ScanState.initial()) {
    on<ScanEvent>(
      (event, emit) async {
        event.map(
            onSubmit: (value) {
              emit(state.copyWith(isLoading: true));

              _creditCardRepository.addCard(value.creditCard);

              emit(state.copyWith(isLoading: false, isSubmitted: true));
            },
            onTake: (_) {},
            onRetake: (_) {},
            onRequestCameraPermission: (_) {},
            onInitializeCamera: (_) {});
      },
    );
  }

  final ICreditCardRepository _creditCardRepository;
}
