import 'package:injectable/injectable.dart';
import 'package:test_task/data/data_sources/remote/business_api/business_api_impl.dart';
import 'package:test_task/data/model/business/business_dto.dart';
import 'package:test_task/data/model/service_category/service_category_dto.dart';
import 'package:test_task/domain/repository/business_repository.dart';


@Injectable()
class BusinessRepositoryImpl implements BusinessRepository {
  final BusinessApiImpl _businessApi;

  BusinessRepositoryImpl(this._businessApi);

  @override
  Future<(List<BusinessDto>, List<ServiceCategoryDto>)> fetchMainScreenData(
      {required String lat, required String lon, int limit = 100}) async {
    try {
      return await _businessApi.fetchMainScreenData(
          lat: lat, lon: lon, limit: limit);
    } catch (e) {
      throw Exception(e);
    }
  }
}
