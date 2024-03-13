import 'package:dio/dio.dart';

class CityNotFoundError extends DioError {
  CityNotFoundError({required super.requestOptions});
}
