class BusinessAttributes {
  BusinessAttributes({
    required this.businessName,
    required this.description,
    required this.websiteUrl,
    required this.state,
    required this.offersMobileServices,
    required this.offersGiftCertificates,
    required this.offersDeals,
    required this.rating,
    required this.phone,
  });

  late final String businessName;
  late final String description;
  late final String websiteUrl;
  late final String state;
  late final bool offersMobileServices;
  late final bool offersGiftCertificates;
  late final bool offersDeals;
  late final Rating rating;
  late final Phone phone;
}


class Rating {
  Rating({
    required this.rating,
    required this.ambiance,
    required this.professionalism,
    required this.reviewsCount,
  });

  late final num rating;
  late final num ambiance;
  late final num professionalism;
  late final int reviewsCount;
}

class Phone {
  Phone({
    required this.number,
    required this.isCell,
  });

  late final String number;
  late final bool isCell;
}
