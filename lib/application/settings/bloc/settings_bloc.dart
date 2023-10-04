import 'dart:developer';

import 'package:bloc/bloc.dart';
// import 'package:credit_card_app/domain/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/domain/banned_countries/i_banned_countries_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsLoading()) {
    // final BannedCountriesRepository bannedCountriesRepository;

    // SettingsBloc(this.bannedCountriesRepository)
    //   : super(SettingsState(
    //         Set<String>.from(bannedCountriesRepository.loadBannedCountries()),));

    on<SettingsInitial>((SettingsInitial event, Emitter<SettingsState> emit) {
      emit(SettingsLoading());
      try {
        if (state is SettingsLoaded) {}
      } catch (_) {
        emit(SettingsError());
      }
    });
    // @override
    // Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
    //   if (event is ToggleCountryEvent) {
    //     final currentState = state;
    //     final selectedCountries = currentState.selectedCountries.toSet();

    //     if (selectedCountries.contains(event.country)) {
    //       selectedCountries.remove(event.country);
    //       bannedCountriesRepository.removeCountry(event.country);
    //     } else {
    //       selectedCountries.add(event.country);
    //       bannedCountriesRepository.addCountry(event.country);
    //     }

    //     yield SettingsState(selectedCountries);
    //   }
    // }
  }
}
