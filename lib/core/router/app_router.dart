import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_task/presentation/main/main_screen.dart';
import 'package:test_task/presentation/weather_details/bloc/weather_details_screen_cubit.dart';
import 'package:test_task/presentation/weather_details/weather_details_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [

        AutoRoute(
          path: MainScreen.route,
          page: MainRoute.page,
          initial: true
        ),
        AutoRoute(
          path: WeatherDetailsScreen.route,
          page: WeatherDetailsRoute.page,
        ),
      ];
}
