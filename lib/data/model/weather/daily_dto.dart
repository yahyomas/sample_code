import 'package:test_task/domain/entities/daily.dart';

import 'weather_data_dto.dart';

class DailyDto extends Daily {
  DailyDto({
    required super.dt,
    required super.sunrise,
    required super.sunset,
    required super.moonrise,
    required super.moonset,
    required super.moonPhase,
    required super.summary,
    required super.temp,
    required super.feelsLike,
    required super.pressure,
    required super.humidity,
    required super.dewPoint,
    required super.windSpeed,
    required super.windDeg,
    required super.windGust,
    required super.weather,
    required super.clouds,
    required super.pop,
    required super.rain,
    required super.uvi,
  });

  factory DailyDto.fromJson(Map<String, dynamic> json) {
    return DailyDto(
      dt: json['dt'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      moonrise: json['moonrise'],
      moonset: json['moonset'],
      moonPhase: json['moon_phase'],
      summary: json['summary'],
      temp: TempDto.fromJson(json['temp']),
      feelsLike: FeelsLikeDto.fromJson(json['feels_like']),
      pressure: json['pressure'],
      humidity: json['humidity'],
      dewPoint: json['dew_point'],
      windSpeed: json['wind_speed'],
      windDeg: json['wind_deg'],
      windGust: json['wind_gust'],
      weather: List.from(json['weather'])
          .map((e) => WeatherDataDto.fromJson(e))
          .toList(),
      clouds: json['clouds'],
      pop: json['pop'],
      rain: json['rain'],
      uvi: json['uvi'],
    );
  }
}

class TempDto extends Temp {
  TempDto({
    required super.day,
    required super.min,
    required super.max,
    required super.night,
    required super.eve,
    required super.morn,
  });

  factory TempDto.fromJson(Map<String, dynamic> json) {
    return TempDto(
      day: json['day'],
      min: json['min'],
      max: json['max'],
      night: json['night'],
      eve: json['eve'],
      morn: json['morn'],
    );
  }
}

class FeelsLikeDto extends FeelsLike {
  FeelsLikeDto({
    required super.day,
    required super.night,
    required super.eve,
    required super.morn,
  });

  factory FeelsLikeDto.fromJson(Map<String, dynamic> json) {
    return FeelsLikeDto(
      day: json['day'],
      night: json['night'],
      eve: json['eve'],
      morn: json['morn'],
    );
  }
}
