import 'package:test_task/domain/entities/business/business.dart';
import 'package:test_task/domain/entities/service_category/service_category.dart';

abstract class BusinessRepository {
  Future<(List<Business>, List<ServiceCategory>)> fetchMainScreenData(
      {required String lat, required String lon, int limit = 100});
}
