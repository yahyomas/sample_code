import 'package:test_task/domain/entities/weather.dart';

import 'current_dto.dart';
import 'daily_dto.dart';

class WeatherDto extends Weather {
  WeatherDto({
    required super.lat,
    required super.lon,
    required super.timezone,
    required super.timezoneOffset,
    required super.current,
    required super.daily,
  });

  factory WeatherDto.fromJson(Map<String, dynamic> json) {
    return WeatherDto(
      lat: json['lat'],
      lon: json['lon'],
      timezone: json['timezone'],
      timezoneOffset: json['timezone_offset'],
      current: CurrentDto.fromJson(json['current']),
      daily: List.from(json['daily']).map((e) => DailyDto.fromJson(e)).toList(),
    );
  }
}
