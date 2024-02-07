import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/injectable/injectable.dart';
import 'package:test_task/core/theme/app_theme.dart';
import 'package:test_task/presentation/splash/bloc/splash_screen_cubit.dart';

import 'core/router/app_router.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => SplashScreenCubit())],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
