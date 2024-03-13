import 'package:isar/isar.dart';

part 'weather_local.g.dart';

@collection
class WeatherLocal {
  Id id = Isar.autoIncrement;

  final String cityName;
  final String temp;
  final String feelsLike;
  final String info;
  final String main;

  WeatherLocal({
    required this.temp,
    required this.info,
    required this.main,
    required this.feelsLike,
    required this.cityName,
  });
}
