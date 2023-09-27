import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'scan_bloc.freezed.dart';
part 'scan_event.dart';
part 'scan_state.dart';

@Injectable()
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc() : super(const ScanState.initial()) {
    on<ScanEvent>((event, emit) async {});
  }
}
