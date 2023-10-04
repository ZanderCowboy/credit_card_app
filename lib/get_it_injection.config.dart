// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/enter/bloc/enter_bloc.dart' as _i12;
import 'application/history/bloc/history_bloc.dart' as _i13;
import 'application/home/bloc/home_bloc.dart' as _i3;
import 'application/result/bloc/result_bloc.dart' as _i8;
import 'application/scan/bloc/scan_bloc.dart' as _i9;
import 'application/settings/bloc/settings_bloc.dart' as _i10;
import 'application/start/bloc/start_bloc.dart' as _i11;
import 'domain/banned_countries/i_banned_countries_repository.dart' as _i4;
import 'domain/credit_card/i_credit_card_repository.dart' as _i6;
import 'infrastructure/banned_countries/banned_countries_repository.dart'
    as _i5;
import 'infrastructure/credit_card/credit_card_repository.dart' as _i7;

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
    gh.factory<_i3.HomeBloc>(() => _i3.HomeBloc());
    gh.lazySingleton<_i4.IBannedCountriesRepository>(
        () => _i5.BannedCountriesRepository());
    gh.lazySingleton<_i6.ICreditCardRepository>(
        () => _i7.CreditCardRepository());
    gh.factory<_i8.ResultBloc>(
        () => _i8.ResultBloc(gh<_i6.ICreditCardRepository>()));
    gh.factory<_i9.ScanBloc>(
        () => _i9.ScanBloc(gh<_i6.ICreditCardRepository>()));
    gh.factory<_i10.SettingsBloc>(
        () => _i10.SettingsBloc(gh<_i4.IBannedCountriesRepository>()));
    gh.factory<_i11.StartBloc>(() => _i11.StartBloc());
    gh.factory<_i12.EnterBloc>(
        () => _i12.EnterBloc(gh<_i6.ICreditCardRepository>()));
    gh.factory<_i13.HistoryBloc>(
        () => _i13.HistoryBloc(gh<_i6.ICreditCardRepository>()));
    return this;
  }
}
