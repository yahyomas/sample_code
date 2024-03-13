import 'package:test_task/domain/entities/current.dart';

import 'weather_data_dto.dart';

class CurrentDto extends Current {
  CurrentDto({
    required super.dt,
    required super.sunrise,
    required super.sunset,
    required super.temp,
    required super.feelsLike,
    required super.pressure,
    required super.humidity,
    required super.dewPoint,
    required super.uvi,
    required super.clouds,
    required super.visibility,
    required super.windSpeed,
    required super.windDeg,
    required super.weather,
  });

  factory CurrentDto.fromJson(Map<String, dynamic> json) {
    return CurrentDto(
      dt: json['dt'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      temp: json['temp'],
      feelsLike: json['feels_like'],
      pressure: json['pressure'],
      humidity: json['humidity'],
      dewPoint: json['dew_point'],
      uvi: json['uvi'],
      clouds: json['clouds'],
      visibility: json['visibility'],
      windSpeed: json['wind_speed'],
      windDeg: json['wind_deg'],
      weather:
      List.from(json['weather'])
          .map((e) => WeatherDataDto.fromJson(e))
          .toList(),);
  }
}

