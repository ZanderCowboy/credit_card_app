import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'scan_event.dart';
part 'scan_state.dart';

class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc() : super(ScanLoading()) {
    on<ScanInitial>((ScanInitial event, Emitter<ScanState> emit) {
      // TODO: implement event handler
      emit(ScanLoading());
      try {
        if (state is ScanLoaded) {
          // TODO: Do something
        }
      } catch (_) {
        emit(ScanError());
      }
    });
    on<ScanTake>((ScanTake event, Emitter<ScanState> emit) => emit(ScanCamera()));
    on<ScanRetake>((ScanRetake event, Emitter<ScanState> emit) => emit(ScanCamera()));
    on<ScanSubmit>((ScanSubmit event, Emitter<ScanState> emit) => emit(ScanResult()));
  }
}
