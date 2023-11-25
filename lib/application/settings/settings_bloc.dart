import 'package:bloc/bloc.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/domain/banned_country/i_banned_country_repository.dart';
import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

/// Bloc for SettingsPage
@Injectable()
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  /// SettingsBloc constructor
  SettingsBloc(this._bannedCountryRepository) : super(SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {
      event.map(
        onPressedAddCountry: (value) {
          emit(state.copyWith(isLoading: true));

          final hasDuplicate =
              _bannedCountryRepository.hasCountry(value.selectedCountry!);

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
                bannedCountry: state.bannedCountry.copyWith(
                  country: value.selectedCountry!,
                  isBanned: true,
                ),
                isLoading: false,
                isAdded: true,
              ),
            );
            _bannedCountryRepository.addCountry(value.selectedCountry!);
          }

          emit(
            state.copyWith(
              isLoading: false,
              isAdded: false,
            ),
          );
        },
        onLongPressedDeleteCountry: (value) {
          emit(
            state.copyWith(
              isLoading: true,
            ),
          );

          final indexAt =
              _bannedCountryRepository.lookupCountry(value.bannedCountry);

          emit(
            state.copyWith(
              isLoading: false,
              isDeleted: true,
            ),
          );

          _bannedCountryRepository.deleteCountryAt(indexAt);

          emit(
            state.copyWith(
              bannedCountry: state.bannedCountry,
              isLoading: false,
              isDeleted: false,
            ),
          );
        },
        onPressedCountry: (value) {
          if (value.bannedCountry.isBanned) {
            emit(
              state.copyWith(
                isChecked: true,
              ),
            );
          } else {
            emit(
              state.copyWith(
                isUnchecked: true,
              ),
            );
          }
          _bannedCountryRepository.updateCountryChecked(
            BannedCountry(
              country: value.bannedCountry.country,
              isBanned: value.bannedCountry.isBanned,
            ),
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

  final IBannedCountryRepository _bannedCountryRepository;
}
