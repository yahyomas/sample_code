import 'current.dart';
import 'daily.dart';

class Weather {
  Weather({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.timezoneOffset,
    required this.current,
    required this.daily,
  });

  late final num lat;
  late final num lon;
  late final String timezone;
  late final int timezoneOffset;
  late final Current current;
  late final List<Daily> daily;
}
