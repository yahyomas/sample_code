
import 'weather_data.dart';

class Current {
  Current({
    required this.dt,
    required this.sunrise,
    required this.sunset,
    required this.temp,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.uvi,
    required this.clouds,
    required this.visibility,
    required this.windSpeed,
    required this.windDeg,
    required this.weather,
  });

  late final int dt;
  late final int sunrise;
  late final int sunset;
  late final num temp;
  late final num feelsLike;
  late final num pressure;
  late final num humidity;
  late final num dewPoint;
  late final num uvi;
  late final num clouds;
  late final num visibility;
  late final num windSpeed;
  late final num windDeg;
  late final List<WeatherData> weather;
}

