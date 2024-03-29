import 'package:auto_route/auto_route.dart';
import 'package:test_task/presentation/main/main_screen.dart';
import 'package:test_task/presentation/splash/splash_screen.dart';

part 'app_router.gr.dart';


@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: SplashScreen.route,
      page: SplashRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: MainScreen.route,
      page: MainRoute.page,
    ),

  ];
}