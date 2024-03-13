import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:test_task/core/local/isar_service.dart';
import 'package:test_task/data/data_sources/local/weather_db.dart';
import 'package:test_task/data/model/local/weather_local.dart';


@Injectable()
class WeatherDbImpl implements WeatherDb {
  final IsarService isarService;

  WeatherDbImpl({required this.isarService});

  @override
  Future<WeatherLocal?> getWeatherData() async {
    final isar = await isarService.db;
    return await isar.weatherLocals.where().findFirst();
  }

  @override
  Future<void> saveWeatherData(WeatherLocal weatherLocal) async {
    final isar = await isarService.db;
    await isar.writeTxn(() async {
      await isar.weatherLocals.put(weatherLocal);
    });
  }
}
