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

@Injectable()
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(this._bannedCountriesRepository)
      : super(SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {
      event.map(
        onAddCountry: (value) async {
          // in case a duplicate country is already in the list
          if (_bannedCountriesRepository.hasCountry(value.selectedCountry!)) {
            emit(const SettingsState.duplicate());
          } else {
            // in case a new country needs to be added to the list
            _bannedCountriesRepository.addCountry(value.selectedCountry!);
            log('In settings_bloc: bc_repo ${_bannedCountriesRepository.readCountries()}');
            emit(SettingsState.loaded(true));
            var newCountry = value.selectedCountry;
            // var newValue = value.value;
            log('*** newCount: $newCountry ***');
          }
        },
        onCountryDelete: (_) async {},
        onCountryPressed: (value) async {
          _bannedCountriesRepository.updateCountryChecked(
              value.country, value.value);
          log('onCountryPresses() in settings_bloc: ${_bannedCountriesRepository.readCountries()}');
          emit(SettingsState.loaded(true));
          var newCountry = value.country;
          var newValue = value.value;
          log('*** newCount: $newCountry *** newValue: $newValue');
        },
      );
    });
  }

  final IBannedCountriesRepository _bannedCountriesRepository;
}
