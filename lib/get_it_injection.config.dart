// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/enter/enter_bloc.dart' as _i13;
import 'application/history/history_bloc.dart' as _i3;
import 'application/home/home_bloc.dart' as _i4;
import 'application/result/result_bloc.dart' as _i9;
import 'application/scan/scan_bloc.dart' as _i10;
import 'application/settings/settings_bloc.dart' as _i11;
import 'application/start/start_bloc.dart' as _i12;
import 'domain/banned_countries/i_banned_countries_repository.dart' as _i5;
import 'domain/credit_card/i_credit_card_repository.dart' as _i7;
import 'infrastructure/banned_countries/banned_countries_repository.dart'
    as _i6;
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
    gh.lazySingleton<_i5.IBannedCountriesRepository>(
        () => _i6.BannedCountriesRepository());
    gh.lazySingleton<_i7.ICreditCardRepository>(
        () => _i8.CreditCardRepository());
    gh.factory<_i9.ResultBloc>(() => _i9.ResultBloc());
    gh.factory<_i10.ScanBloc>(
        () => _i10.ScanBloc(gh<_i7.ICreditCardRepository>()));
    gh.factory<_i11.SettingsBloc>(
        () => _i11.SettingsBloc(gh<_i5.IBannedCountriesRepository>()));
    gh.factory<_i12.StartBloc>(() => _i12.StartBloc());
    gh.factory<_i13.EnterBloc>(
        () => _i13.EnterBloc(gh<_i7.ICreditCardRepository>()));
    return this;
  }
}
