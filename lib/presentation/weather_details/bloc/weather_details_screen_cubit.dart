import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/domain/entities/weather.dart';

import 'weather_details_screen_state.dart';

class WeatherDetailsScreenCubit extends Cubit<WeatherDetailsScreenState> {
  final Weather weatherDto;

  WeatherDetailsScreenCubit({required this.weatherDto})
      : super(WeatherDetailsScreenState(
          weatherDto: weatherDto,
        )) {
    final f = (weatherDto.current.temp - 273.15) * 9 / 5 + 32;

    emit(
      state.copyWith(
          cityName: weatherDto.timezone,
          tempC: (weatherDto.current.temp - 273).toInt().toString(),
          tempK: weatherDto.current.temp.toInt().toString(),
          tempF: f.toInt().toString(),
          feelsLike: (weatherDto.current.feelsLike - 273).toInt().toString(),
          info: weatherDto.current.weather[0].description,
          main: weatherDto.current.weather[0].main,
          weatherDto: weatherDto),
    );
  }
}
