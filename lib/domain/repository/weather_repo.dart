import 'package:test_task/data/model/local/weather_local.dart';
import 'package:test_task/domain/entities/weather.dart';

abstract class WeatherRepo{
  Future<Weather> fetchWeatherData(
      {required String lat, required String lon});

  Future<(double, double)> getCityLocation(String city);

  Future<void> saveWeatherData(WeatherLocal weatherLocal);

  Future<WeatherLocal?> getWeatherData();

}