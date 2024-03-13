import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_task/data/data_sources/local/weather_db_impl.dart';
import 'package:test_task/data/data_sources/remote/weather_api_impl.dart';
import 'package:test_task/data/model/local/weather_local.dart';
import 'package:test_task/data/model/weather/weather_data_dto.dart';
import 'package:test_task/data/model/weather/weather_dto.dart';
import 'package:test_task/data/repository_impl/weather_repo_impl.dart';
import 'package:test_task/domain/entities/current.dart';
import 'package:test_task/domain/repository/weather_repo.dart';

import 'weather_repo_test.mocks.dart';

@GenerateMocks([WeatherApiImpl, WeatherDbImpl])
void main() {
  late MockWeatherApiImpl weatherApi;
  late MockWeatherDbImpl weatherDb;
  late WeatherRepo weatherRepo;

  setUp(() {
    weatherApi = MockWeatherApiImpl();
    weatherDb = MockWeatherDbImpl();

    weatherRepo = WeatherRepoImpl(api: weatherApi, db: weatherDb);
  });
  const cityLocation = (41.2646, 69.2163);

  final WeatherDto weatherDto = WeatherDto(
      lat: 12345,
      lon: 12354,
      timezone: 'asdf',
      timezoneOffset: 12345,
      current: Current(
          dt: 12345,
          sunrise: 123456,
          sunset: 12345,
          temp: 1234,
          feelsLike: 12345,
          pressure: 12345,
          humidity: 1234,
          dewPoint: 234,
          uvi: 234,
          clouds: 234,
          visibility: 123,
          windSpeed: 1234,
          windDeg: 123,
          weather: [
            WeatherDataDto(id: 12, main: '', description: '', icon: '')
          ]),
      daily: []);

  final WeatherLocal weatherLocal = WeatherLocal(temp: '1234',
      info: 'info',
      main: 'main',
      feelsLike: 'feelsLike',
      cityName: 'cityName');

  group('Weather repository test', () {
    test('getCityLocation', () async {
      // Arrange
      when(
        weatherApi.getCityLocation('Tashkent'),
      ).thenAnswer((_) async => cityLocation);

      // Act
      final result = await weatherRepo.getCityLocation('Tashkent');

      // Assert
      expect(result, isA<(double, double)>());
      verify(weatherApi.getCityLocation('Tashkent'));
    });

    test('getWeatherData', () async {
      // Arrange
      when(
        weatherApi.fetchWeatherData(lat: '41.2646', lon: '69.2163'),
      ).thenAnswer((_) async => weatherDto);

      // Act
      final result = await weatherRepo.fetchWeatherData(
          lat: '41.2646', lon: '69.2163');

      // Assert
      expect(result, isA<WeatherDto>());
      verify(weatherApi.fetchWeatherData(lat: '41.2646', lon: '69.2163'));
    });

    test('getLocalWeatherData', () async {
      // Arrange
      when(
        weatherDb.getWeatherData(),
      ).thenAnswer((_) async => weatherLocal);

      // Act
      final result = await weatherDb.getWeatherData();

      // Assert
      expect(result, isA<WeatherLocal>());
      verify(weatherDb.getWeatherData());
    });
  });
}
