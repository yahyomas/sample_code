// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    WeatherDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<WeatherDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WeatherDetailsScreen(
          key: args.key,
          weatherDetailsScreenCubit: args.weatherDetailsScreenCubit,
        ),
      );
    },
  };
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WeatherDetailsScreen]
class WeatherDetailsRoute extends PageRouteInfo<WeatherDetailsRouteArgs> {
  WeatherDetailsRoute({
    Key? key,
    required WeatherDetailsScreenCubit weatherDetailsScreenCubit,
    List<PageRouteInfo>? children,
  }) : super(
          WeatherDetailsRoute.name,
          args: WeatherDetailsRouteArgs(
            key: key,
            weatherDetailsScreenCubit: weatherDetailsScreenCubit,
          ),
          initialChildren: children,
        );

  static const String name = 'WeatherDetailsRoute';

  static const PageInfo<WeatherDetailsRouteArgs> page =
      PageInfo<WeatherDetailsRouteArgs>(name);
}

class WeatherDetailsRouteArgs {
  const WeatherDetailsRouteArgs({
    this.key,
    required this.weatherDetailsScreenCubit,
  });

  final Key? key;

  final WeatherDetailsScreenCubit weatherDetailsScreenCubit;

  @override
  String toString() {
    return 'WeatherDetailsRouteArgs{key: $key, weatherDetailsScreenCubit: $weatherDetailsScreenCubit}';
  }
}
