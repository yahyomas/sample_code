import 'package:test_task/domain/entities/business/business_attributes.dart';

class Business {
  late final BusinessAttributes attributes;
  late final String id;
  late final BusinessServiceCategories serviceCategories;

  Business(
      {required this.id,
      required this.attributes,
      required this.serviceCategories});
}

class BusinessServiceCategories {
  final List<BusinessServiceCategory> data;

  BusinessServiceCategories({required this.data});
}

class BusinessServiceCategory {
  final String type;
  final String id;

  BusinessServiceCategory({required this.id, required this.type});
}
