import 'package:bloc/bloc.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

/// Bloc for HistoryPage
@Injectable()
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  /// HistoryBloc constructor
  HistoryBloc() : super(HistoryState.initial()) {
    on<HistoryEvent>((event, emit) {});
  }
}
