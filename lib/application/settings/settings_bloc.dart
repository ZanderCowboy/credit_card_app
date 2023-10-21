import 'package:bloc/bloc.dart';
import 'package:credit_card_app/constants/text_constants.dart';
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
        onAddCountry: (value) {
          emit(state.copyWith(isLoading: true));

          final bool hasDuplicate =
              _bannedCountriesRepository.hasCountry(value.selectedCountry!);

          if (hasDuplicate) {
            //! in case we have a duplicate
            emit(
              state.copyWith(
                isLoading: false,
                errorMessage: settingsDuplicateCountryErrorMessage,
              ),
            );
          } else {
            //! in case we do not have the country in the DB already
            emit(
              state.copyWith(
                bannedCountries: state.bannedCountries.copyWith(
                  bannedCountry: value.selectedCountry!,
                  isBanned: true,
                ),
                isLoading: false,
                isAdded: true,
              ),
            );
            _bannedCountriesRepository.addCountry(value.selectedCountry!);
          }

          emit(
            state.copyWith(
              isLoading: false,
              isAdded: false,
            ),
          );
        },
        onCountryDelete: (value) {
          emit(state.copyWith(isLoading: true));

          int indexAt =
              _bannedCountriesRepository.lookupCountry(value.bannedCountry);

          emit(
            state.copyWith(
              isLoading: false,
              isDeleted: true,
            ),
          );

          _bannedCountriesRepository.deleteCountryAt(indexAt);

          emit(
            state.copyWith(
              bannedCountries: state.bannedCountries,
              isLoading: false,
              isDeleted: false,
            ),
          );
        },
        onCountryPressed: (value) {
          if (value.bannedCountries.isBanned) {
            emit(state.copyWith(isChecked: true));
          } else {
            emit(state.copyWith(isUnchecked: true));
          }

          _bannedCountriesRepository.updateCountryChecked(
            value.bannedCountries.bannedCountry,
            value.bannedCountries.isBanned,
          );

          emit(
            state.copyWith(
              isChecked: false,
              isUnchecked: false,
            ),
          );
        },
      );
    });
  }

  final IBannedCountriesRepository _bannedCountriesRepository;
}
