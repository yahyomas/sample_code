class WeatherData {
  WeatherData({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  late final int id;
  late final String main;
  late final String description;
  late final String icon;
}