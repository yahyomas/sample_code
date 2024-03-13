import 'package:test_task/data/model/weather/weather_dto.dart';

abstract class WeatherApi {
  Future<WeatherDto> fetchWeatherData(
      {required String lat, required String lon});

  Future<(double, double)> getCityLocation(String city);
}


