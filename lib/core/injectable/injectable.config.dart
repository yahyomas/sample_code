// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_task/core/network/api_service.dart' as _i3;
import 'package:test_task/data/data_sources/remote/business_api/business_api_impl.dart'
    as _i4;
import 'package:test_task/data/repository_impl/business_repository_impl.dart'
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
  gh.factory<_i4.BusinessApiImpl>(() => _i4.BusinessApiImpl(gh<_i3.AppApi>()));
  gh.factory<_i5.BusinessRepositoryImpl>(
      () => _i5.BusinessRepositoryImpl(gh<_i4.BusinessApiImpl>()));
  return getIt;
}
