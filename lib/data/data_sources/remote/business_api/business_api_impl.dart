import 'package:injectable/injectable.dart';
import 'package:test_task/core/network/api_service.dart';
import 'package:test_task/core/network/network_constants.dart';
import 'package:test_task/data/data_sources/remote/business_api/businesses_api.dart';
import 'package:test_task/data/model/business/business_dto.dart';
import 'package:test_task/data/model/service_category/service_category_dto.dart';


@Injectable()
class BusinessApiImpl implements BusinessApi {
  final AppApi _api;

  BusinessApiImpl(this._api);

  @override
  Future<(List<BusinessDto>, List<ServiceCategoryDto>)> fetchMainScreenData(
      {required String lat, required String lon, int limit = 100}) async {
    try {
      Map<String, dynamic> params = {
        'limit': limit,
        'includes': 'service_categories',
        'filters': 'latitude==$lat,longitude==$lon'
      };
      final response =
          await _api.get(NetworkConstants.businesses, queryParameters: params);

      final List<ServiceCategoryDto> serviceCategories =
          List.from(response['included'])
              .map((json) => ServiceCategoryDto.fromJson(json))
              .toList();

      final List<BusinessDto> businesses = List.from(response['data'])
          .map((json) => BusinessDto.fromJson(json))
          .toList();

      return (businesses, serviceCategories);
    } catch (e) {
      throw Exception(e);
    }
  }
}
