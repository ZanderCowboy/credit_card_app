import 'package:bloc/bloc.dart';
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
      : super(const SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {});
  }

  final IBannedCountriesRepository _bannedCountriesRepository;
}
