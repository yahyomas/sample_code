import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_task/data/model/local/weather_local.dart';


@Injectable()
class IsarService {
  late Future<Isar> db;
  //we define db that we want to use as late
  IsarService() {
    db = openDB();
    //open DB for use.
  }

  Future<Isar> openDB() async {
    var dir = await getApplicationDocumentsDirectory();
    // to get application directory information
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        //open isar
        [WeatherLocalSchema],
        directory: dir.path,
        // user.g.dart includes the schemes that we need to define here - it can be multiple.
      );
    }
    return Future.value(Isar.getInstance());
    // return instance of Isar - it makes the isar state Ready for Usage for adding/deleting operations.
  }
}