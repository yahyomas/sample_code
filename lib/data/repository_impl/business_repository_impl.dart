import 'package:injectable/injectable.dart';
import 'package:test_task/data/data_sources/remote/business_api/business_api_impl.dart';
import 'package:test_task/domain/entities/business/business.dart';
import 'package:test_task/domain/entities/service_category/service_category.dart';
import 'package:test_task/domain/repository/business_repository.dart';


@Injectable()
class BusinessRepositoryImpl implements BusinessRepository {
  final BusinessApiImpl _businessApi;

  BusinessRepositoryImpl(this._businessApi);

  @override
  Future<(List<Business>, List<ServiceCategory>)> fetchMainScreenData(
      {required String lat, required String lon, int limit = 100}) async {
    try {
      return await _businessApi.fetchMainScreenData(
          lat: lat, lon: lon, limit: limit);
    } catch (e) {
      throw Exception(e);
    }
  }
}
