import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/domain/banned_countries/i_banned_countries_repository.dart';
import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
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
          emit(state.copyWith(isLoading: true));

          final bool hasDuplicate =
              _bannedCountriesRepository.hasCountry(value.selectedCountry!);

          if (hasDuplicate) {
            //! in case we have a duplicate
            log('*** duplicate country: country=${value.selectedCountry}');
            emit(
              state.copyWith(
                country: value.selectedCountry,
                isDuplicate: true,
                errorMessage: duplicateCountryErrorMessage,
              ),
            );
          } else {
            //! in case we do not have the country in the DB already
            log('*** first country: country=${value.selectedCountry}');

            emit(
              state.copyWith(
                bannedCountries: state.bannedCountries.copyWith(
                  bannedCountry: value.selectedCountry!,
                  isBanned: true,
                ),
              ),
            );
            _bannedCountriesRepository.addCountry(value.selectedCountry!);
            // emit(state.copyWith(country: value.selectedCountry));
          }

          emit(state.copyWith(isLoading: false, isDuplicate: false));
        },
        onCountryDelete: (value) async {
          emit(state.copyWith(isLoading: true));

          int indexAt =
              _bannedCountriesRepository.lookupCountry(value.bannedCountry);

          await _bannedCountriesRepository.deleteCountryAt(indexAt);

          emit(state.copyWith(isDeleted: true));
          emit(state.copyWith(isLoading: false, isDeleted: false));
        },
        onCountryPressed: (value) async {
          emit(state.copyWith(isChecked: true));

          await _bannedCountriesRepository.updateCountryChecked(
            value.country,
            value.value,
          );

          emit(
            state.copyWith(
              bannedCountries: state.bannedCountries.copyWith(
                bannedCountry: value.country,
                isBanned: value.value!,
              ),
            ),
          );

          emit(state.copyWith(isChecked: false));
        },
      );
    });
  }

  final IBannedCountriesRepository _bannedCountriesRepository;
}
