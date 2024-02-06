import 'dart:io';
import 'package:dio/dio.dart';


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

    //TODO handle backend standard errors


    return handler.next(err);
  }
}
