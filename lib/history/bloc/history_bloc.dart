import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

@Injectable()
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryState.initial()) {
    on<HistoryEvent>((event, emit) async {});
  }
}
