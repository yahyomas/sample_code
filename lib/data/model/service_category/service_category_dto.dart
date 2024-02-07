import 'package:test_task/domain/entities/service_category/service_category.dart';

class ServiceCategoryDto extends ServiceCategory {
  ServiceCategoryDto(
      {required super.id, required super.type, required super.attributes});

  factory ServiceCategoryDto.fromJson(Map<String, dynamic> data) {
    return ServiceCategoryDto(
        id: data['id'],
        type: data['type'],
        attributes: AttributesDto.fromJson(data['attributes']));
  }
}

class AttributesDto extends Attributes {
  AttributesDto(
      {required super.name,
      required super.categoryType,
      required super.isApproved,
      required super.slug});

  factory AttributesDto.fromJson(Map<String, dynamic> data) {
    return AttributesDto(
      name: data['name'],
      categoryType: data['category_type'],
      isApproved: data['is_approved'],
      slug: data['slug'],
    );
  }
}
