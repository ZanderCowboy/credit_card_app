import 'package:bloc/bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

// class AppBloc extends Bloc<AppEvent, AppState> {
//   AppBloc() : super(AppLoading()) {
//     on<AppInitial>((AppInitial event, Emitter<AppState> emit) {
//       emit(AppLoading());
//       try {
//         if (state is AppLoaded) {

//         }
//       } catch (_) {
//         emit(AppError());
//       }
//     });
//   }
// }
