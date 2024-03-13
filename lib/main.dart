import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/injectable/injectable.dart';
import 'package:test_task/core/theme/app_theme.dart';
import 'package:test_task/data/repository_impl/weather_repo_impl.dart';
import 'package:test_task/domain/service/connectivity_bloc/connectivity_bloc.dart';
import 'package:test_task/domain/service/location_service/location_service.dart';

import 'core/router/app_router.dart';
import 'presentation/main/bloc/main_screen_cubit.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final ConnectivityBloc connectivityBloc = ConnectivityBloc();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => connectivityBloc,
        ),
        BlocProvider(
          create: (_) => MainScreenCubit(
              repo: getIt<WeatherRepoImpl>(),
              locationService: getIt<LocationService>(),
              connectivityBloc: connectivityBloc),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
