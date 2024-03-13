import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_task/core/network/api_service.dart';
import 'package:test_task/core/network/network_constants.dart';
import 'package:test_task/data/data_sources/remote/weather_api_impl.dart';
import 'package:test_task/data/model/weather/weather_dto.dart';

import 'weather_api_test.mocks.dart';

@GenerateMocks([AppApi])
void main() {
  late MockAppApi mockApiService;
  late WeatherApiImpl apiImpl;

  setUp(() {
    mockApiService = MockAppApi();
    apiImpl = WeatherApiImpl(api: mockApiService);
  });

  const Map<String, dynamic> cityLocationResponse = {
    "coord": {"lon": 71.446, "lat": 51.1801}
  };

  Map<String, dynamic> weatherResponse = {
    "lat": 41.2646,
    "lon": 69.2163,
    "timezone": "Asia/Tashkent",
    "timezone_offset": 18000,
    "current": {
      "dt": 1710217801,
      "sunrise": 1710207590,
      "sunset": 1710249962,
      "temp": 285.12,
      "feels_like": 284.36,
      "pressure": 1016,
      "humidity": 76,
      "dew_point": 281.03,
      "uvi": 0.87,
      "clouds": 75,
      "visibility": 7000,
      "wind_speed": 3.09,
      "wind_deg": 310,
      "weather": [
        {
          "id": 520,
          "main": "Rain",
          "description": "light intensity shower rain",
          "icon": "09d"
        }
      ],
      "rain": {"1h": 1.78}
    },
    "daily": [
      {
        "dt": 1710226800,
        "sunrise": 1710207590,
        "sunset": 1710249962,
        "moonrise": 1710211260,
        "moonset": 1710259620,
        "moon_phase": 0.07,
        "summary": "Expect a day of partly cloudy with rain",
        "temp": {
          "day": 285.22,
          "min": 276.85,
          "max": 286.42,
          "night": 276.85,
          "eve": 279.57,
          "morn": 284.27
        },
        "feels_like": {
          "day": 284.49,
          "night": 273.67,
          "eve": 276.41,
          "morn": 283.21
        },
        "pressure": 1016,
        "humidity": 77,
        "dew_point": 281.32,
        "wind_speed": 6.6,
        "wind_deg": 325,
        "wind_gust": 9.96,
        "weather": [
          {
            "id": 501,
            "main": "Rain",
            "description": "moderate rain",
            "icon": "10d"
          }
        ],
        "clouds": 85,
        "pop": 1,
        "rain": 9.94,
        "uvi": 1.24
      }
    ]
  };

  group('Weather api test', () {
    test('get city location by name', () async {
      // Arrange
      when(
        mockApiService.get(NetworkConstants.cityNameToLocation,
            token: null,
            queryParameters: {
              'q': 'Tashkent',
            },
            options: null,
            cancelToken: null,
            onReceiveProgress: null),
      ).thenAnswer((_) async => cityLocationResponse);

      // Act
      final result = await apiImpl.getCityLocation('Tashkent');

      // Assert
      expect(result, isA<(double, double)>());
      verify(mockApiService.get(NetworkConstants.cityNameToLocation,
          token: null,
          queryParameters: {
            'q': 'Tashkent',
          },
          options: null,
          cancelToken: null,
          onReceiveProgress: null));
    });

    test('get weather data', () async {
      // Arrange
      when(
        mockApiService.get(NetworkConstants.oneCall,
            token: null,
            queryParameters: {'lat': '51.1801', 'lon': '71.446'},
            options: null,
            cancelToken: null,
            onReceiveProgress: null),
      ).thenAnswer((_) async => weatherResponse);

      // Act
      final result =
          await apiImpl.fetchWeatherData(lat: '51.1801', lon: '71.446');

      // Assert
      expect(result, isA<WeatherDto>());
      verify(mockApiService.get(NetworkConstants.oneCall,
          token: null,
          queryParameters: {'lat': '51.1801', 'lon': '71.446'},
          options: null,
          cancelToken: null,
          onReceiveProgress: null));
    });
  });
}
