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

import 'enter/bloc/enter_bloc.dart' as _i3;
import 'history/bloc/history_bloc.dart' as _i4;
import 'home/bloc/home_bloc.dart' as _i5;
import 'result/bloc/result_bloc.dart' as _i6;
import 'scan/bloc/scan_bloc.dart' as _i7;
import 'settings/bloc/settings_bloc.dart' as _i8;
import 'start/bloc/start_bloc.dart' as _i9;

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
    gh.factory<_i3.EnterBloc>(() => _i3.EnterBloc());
    gh.factory<_i4.HistoryBloc>(() => _i4.HistoryBloc());
    gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc());
    gh.factory<_i6.ResultBloc>(() => _i6.ResultBloc());
    gh.factory<_i7.ScanBloc>(() => _i7.ScanBloc());
    gh.factory<_i8.SettingsBloc>(() => _i8.SettingsBloc());
    gh.factory<_i9.StartBloc>(() => _i9.StartBloc());
    return this;
  }
}
