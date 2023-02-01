import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class ApiService with DioMixin implements Dio {
  bool _validateStatus(int? status) {
    if (status != null) {
      if (status == 401) {
        return false;
      }
    }
    return true;
  }

  @override
  BaseOptions get options => BaseOptions(
        baseUrl: 'https://api.nationalize.io',
        contentType: ContentType.json.mimeType,
        responseType: ResponseType.json,
        receiveDataWhenStatusError: false,
        validateStatus: _validateStatus,
      );

  @override
  HttpClientAdapter get httpClientAdapter => DefaultHttpClientAdapter();

  @override
  Interceptors get interceptors => Interceptors()
    ..add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      request: true,
      requestHeader: true,
      responseHeader: true,
    ));
}
