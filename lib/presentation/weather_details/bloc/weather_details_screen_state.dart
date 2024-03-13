import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task/domain/entities/weather.dart';

part 'weather_details_screen_state.freezed.dart';

@freezed
class WeatherDetailsScreenState with _$WeatherDetailsScreenState {
  const factory WeatherDetailsScreenState({
    @Default('') String cityName,
    @Default('') String tempC,
    @Default('') String tempK,
    @Default('') String tempF,
    @Default('') String feelsLike,
    @Default('') String info,
    @Default('') String main,
    @Default('') String date,
    Weather? weatherDto,
  }) = _WeatherDetailsScreenState;
}
