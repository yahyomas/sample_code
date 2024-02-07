import 'package:test_task/data/model/business/business_dto.dart';
import 'package:test_task/data/model/service_category/service_category_dto.dart';

abstract class BusinessApi {
  Future<(List<BusinessDto>, List<ServiceCategoryDto>)> fetchMainScreenData(
      {required String lat, required String lon, int limit = 100});
}
