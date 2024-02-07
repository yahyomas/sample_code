import 'package:test_task/domain/entities/business/business_attributes.dart';

class BusinessAttributesDto extends BusinessAttributes {
  BusinessAttributesDto(
      {required super.businessName,
      required super.description,
      required super.websiteUrl,
      required super.state,
      required super.offersMobileServices,
      required super.offersGiftCertificates,
      required super.offersDeals,
      required super.rating,
      required super.phone});

  factory BusinessAttributesDto.fromJson(Map<String, dynamic> json) {
    return BusinessAttributesDto(
      businessName: json['business_name'],
      description: json['description'],
      websiteUrl: json['website_url'],
      state: json['state'],
      offersMobileServices: json['offers_mobile_services'],
      offersGiftCertificates: json['offers_gift_certificates'],
      offersDeals: json['offers_deals'],
      rating: RatingDto.fromJson(json['rating']),
      phone: PhoneDto.fromJson(json['phone']),
    );
  }
}


class RatingDto extends Rating {
  RatingDto(
      {required super.rating,
      required super.ambiance,
      required super.professionalism,
      required super.reviewsCount});

  factory RatingDto.fromJson(Map<String, dynamic> json) {
    return RatingDto(
        rating: json['rating'],
        ambiance: json['ambiance'],
        professionalism: json['professionalism'],
        reviewsCount: json['reviews_count']);
  }
}

class PhoneDto extends Phone {
  PhoneDto({required super.number, required super.isCell});

  factory PhoneDto.fromJson(Map<String, dynamic> json) {
    return PhoneDto(number: json['number'], isCell: json['is_cell']);
  }
}
