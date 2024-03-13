import 'package:injectable/injectable.dart';
import 'package:test_task/core/network/api_service.dart';
import 'package:test_task/core/network/network_constants.dart';
import 'package:test_task/data/model/weather/weather_dto.dart';

import 'weather_api.dart';

@Injectable()
class WeatherApiImpl implements WeatherApi {
  final AppApi api;

  WeatherApiImpl({required this.api});

  @override
  Future<WeatherDto> fetchWeatherData(
      {required String lat, required String lon}) async {
    try {
      final res = await api.get(NetworkConstants.oneCall,
          queryParameters: {'lat': lat, 'lon': lon});

      return WeatherDto.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<(double, double)> getCityLocation(String city) async {
    try {
      final res = await api.get(NetworkConstants.cityNameToLocation,
          queryParameters: {'q': city});

      return (
        (res['coord']['lat'] + 0.0) as double,
        (res['coord']['lon'] + 0.0) as double
      );
    } catch (e) {
      rethrow;
    }
  }
}
