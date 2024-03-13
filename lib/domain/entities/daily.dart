
import 'weather_data.dart';

class Daily {
  Daily({
    required this.dt,
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
    required this.summary,
    required this.temp,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.windSpeed,
    required this.windDeg,
    required this.windGust,
    required this.weather,
    required this.clouds,
    required this.pop,
    required this.rain,
    required this.uvi,
  });

  late final num dt;
  late final num sunrise;
  late final num sunset;
  late final num moonrise;
  late final num moonset;
  late final num moonPhase;
  late final String summary;
  late final Temp temp;
  late final FeelsLike feelsLike;
  late final num pressure;
  late final num humidity;
  late final num dewPoint;
  late final num windSpeed;
  late final num windDeg;
  late final num windGust;
  late final List<WeatherData> weather;
  late final num clouds;
  late final num pop;
  late final num? rain;
  late final num uvi;

}

class Temp {
  Temp({
    required this.day,
    required this.min,
    required this.max,
    required this.night,
    required this.eve,
    required this.morn,
  });

  late final num day;
  late final num min;
  late final num max;
  late final num night;
  late final num eve;
  late final num morn;

}

class FeelsLike {
  FeelsLike({
    required this.day,
    required this.night,
    required this.eve,
    required this.morn,
  });

  late final num day;
  late final num night;
  late final num eve;
  late final num morn;

}
