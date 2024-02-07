import 'package:test_task/data/model/business/business_attributes_dto.dart';
import 'package:test_task/domain/entities/business/business.dart';

class BusinessDto extends Business {
  BusinessDto(
      {required super.id,
      required super.attributes,
      required super.serviceCategories});

  factory BusinessDto.fromJson(Map<String, dynamic> json) {
    return BusinessDto(
      id: json['id'],
      attributes: BusinessAttributesDto.fromJson(json['attributes']),
      serviceCategories: BusinessServiceCategoriesDto.fromJson(
          json['relationships']['service_categories']),
    );
  }
}

class BusinessServiceCategoriesDto extends BusinessServiceCategories {
  BusinessServiceCategoriesDto({required super.data});

  factory BusinessServiceCategoriesDto.fromJson(Map<String, dynamic> json) {
    return BusinessServiceCategoriesDto(
      data: List.from(json['data'])
          .map((json) => BusinessServiceCategoryDto.fromJson(json))
          .toList(),
    );
  }
}

class BusinessServiceCategoryDto extends BusinessServiceCategory {
  BusinessServiceCategoryDto({required super.id, required super.type});

  factory BusinessServiceCategoryDto.fromJson(Map<String, dynamic> json) {
    return BusinessServiceCategoryDto(
      id: json['id'],
      type: json['type'],
    );
  }
}
