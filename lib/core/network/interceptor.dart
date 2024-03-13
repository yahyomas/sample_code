import 'dart:io';

import 'package:dio/dio.dart';
import 'package:test_task/core/network/custom_error.dart';
import 'package:test_task/core/network/network_constants.dart';

class CustomInterceptor extends Interceptor {
  final Dio dio;

  CustomInterceptor({required this.dio});

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.type == DioErrorType.connectTimeout ||
        err.type == DioErrorType.sendTimeout ||
        err.type == DioErrorType.receiveTimeout ||
        err.error is SocketException) {
      //TODO handle socket exceptions
    }

    if (err.response?.statusCode == 404 &&
        err.requestOptions.path == NetworkConstants.cityNameToLocation) {
      return handler
          .next(CityNotFoundError(requestOptions: err.requestOptions));
    }

    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var requestOptions = options.queryParameters;

    requestOptions['appid'] = NetworkConstants.appId;

    super.onRequest(options.copyWith(queryParameters: requestOptions), handler);
  }
}
