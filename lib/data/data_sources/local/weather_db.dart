import 'package:test_task/data/model/local/weather_local.dart';

abstract class WeatherDb {
  Future<void> saveWeatherData(WeatherLocal weatherLocal);

  Future<WeatherLocal?> getWeatherData();
}
