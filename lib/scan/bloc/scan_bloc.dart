import 'package:bloc/bloc.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'scan_bloc.freezed.dart';
part 'scan_event.dart';
part 'scan_state.dart';

@Injectable()
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc(this._creditCardRepository) : super(const ScanState.initial()) {
    on<ScanEvent>((event, emit) async {
      event.map(
        onSubmit: (_) {},
        onTake: (_) {},
        onRetake: (_) {},
      );
    });
  }

  final ICreditCardRepository _creditCardRepository;
}
