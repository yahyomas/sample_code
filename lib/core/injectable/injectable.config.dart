// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_task/core/local/isar_service.dart' as _i4;
import 'package:test_task/core/network/api_service.dart' as _i3;
import 'package:test_task/data/data_sources/local/weather_db_impl.dart' as _i7;
import 'package:test_task/data/data_sources/remote/weather_api_impl.dart'
    as _i6;
import 'package:test_task/data/repository_impl/weather_repo_impl.dart' as _i8;
import 'package:test_task/domain/service/location_service/location_service.dart'
    as _i5;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AppApi>(() => _i3.AppApi());
  gh.factory<_i4.IsarService>(() => _i4.IsarService());
  gh.factory<_i5.LocationService>(() => _i5.LocationService());
  gh.factory<_i6.WeatherApiImpl>(
      () => _i6.WeatherApiImpl(api: gh<_i3.AppApi>()));
  gh.factory<_i7.WeatherDbImpl>(
      () => _i7.WeatherDbImpl(isarService: gh<_i4.IsarService>()));
  gh.factory<_i8.WeatherRepoImpl>(() => _i8.WeatherRepoImpl(
        api: gh<_i6.WeatherApiImpl>(),
        db: gh<_i7.WeatherDbImpl>(),
      ));
  return getIt;
}
