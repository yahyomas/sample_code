import 'package:injectable/injectable.dart';
import 'package:test_task/data/data_sources/local/weather_db_impl.dart';
import 'package:test_task/data/data_sources/remote/weather_api_impl.dart';
import 'package:test_task/data/model/local/weather_local.dart';
import 'package:test_task/domain/entities/weather.dart';
import 'package:test_task/domain/repository/weather_repo.dart';

@Injectable()
class WeatherRepoImpl implements WeatherRepo {
  final WeatherApiImpl api;
  final WeatherDbImpl db;

  WeatherRepoImpl({required this.api, required this.db});

  @override
  Future<Weather> fetchWeatherData(
      {required String lat, required String lon}) async {
    try {
      return await api.fetchWeatherData(lat: lat, lon: lon);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<(double, double)> getCityLocation(String city) async {
    try {
      return await api.getCityLocation(city);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<WeatherLocal?> getWeatherData() async {
    try {
      return await db.getWeatherData();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveWeatherData(WeatherLocal weatherLocal) async {
    try {
      return await db.saveWeatherData(weatherLocal);
    } catch (e) {
      rethrow;
    }
  }
}
