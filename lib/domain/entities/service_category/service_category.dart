class ServiceCategory {
  ServiceCategory({
    required this.id,
    required this.type,
    required this.attributes,
  });

  late final String id;
  late final String type;
  late final Attributes attributes;
}

class Attributes {
  Attributes({
    required this.name,
    required this.categoryType,
    required this.isApproved,
    required this.slug,
  });

  late final String name;
  late final String categoryType;
  late final bool isApproved;
  late final String slug;
}
