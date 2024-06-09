// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/enter/enter_bloc.dart' as _i11;
import 'application/history/history_bloc.dart' as _i3;
import 'application/home/home_bloc.dart' as _i4;
import 'application/result/result_bloc.dart' as _i5;
import 'application/scan/scan_bloc.dart' as _i12;
import 'application/settings/settings_bloc.dart' as _i13;
import 'application/start/start_bloc.dart' as _i6;
import 'domain/banned_country/i_banned_country_repository.dart' as _i9;
import 'domain/credit_card/i_credit_card_repository.dart' as _i7;
import 'infrastructure/banned_country/banned_country_repository.dart' as _i10;
import 'infrastructure/credit_card/credit_card_repository.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.HistoryBloc>(() => _i3.HistoryBloc());
    gh.factory<_i4.HomeBloc>(() => _i4.HomeBloc());
    gh.factory<_i5.ResultBloc>(() => _i5.ResultBloc());
    gh.factory<_i6.StartBloc>(() => _i6.StartBloc());
    gh.lazySingleton<_i7.ICreditCardRepository>(
        () => _i8.CreditCardRepository());
    gh.lazySingleton<_i9.IBannedCountryRepository>(
        () => _i10.BannedCountryRepository());
    gh.factory<_i11.EnterBloc>(
        () => _i11.EnterBloc(gh<_i7.ICreditCardRepository>()));
    gh.factory<_i12.ScanBloc>(
        () => _i12.ScanBloc(gh<_i7.ICreditCardRepository>()));
    gh.factory<_i13.SettingsBloc>(
        () => _i13.SettingsBloc(gh<_i9.IBannedCountryRepository>()));
    return this;
  }
}
