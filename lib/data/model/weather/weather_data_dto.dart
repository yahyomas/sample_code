import 'package:test_task/domain/entities/weather_data.dart';

class WeatherDataDto extends WeatherData {
  WeatherDataDto({
    required super.id,
    required super.main,
    required super.description,
    required super.icon,
  });

  factory WeatherDataDto.fromJson(Map<String, dynamic> json) {
    return WeatherDataDto(
      id: json['id'],
      main: json['main'],
      description: json['description'],
      icon: json['icon'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}
