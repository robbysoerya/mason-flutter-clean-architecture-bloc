import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class ApiService with DioMixin implements Dio {
  @override
  HttpClientAdapter get httpClientAdapter => DefaultHttpClientAdapter();

  @override
  BaseOptions get options => BaseOptions(
        baseUrl: BASE_URL,
        contentType: 'application/json',
      );

  @override
  Interceptors get interceptors => Interceptors()..add(LogInterceptor());

  Future<Projects> fetchProjects() async {
    var response = await get('/projects');
    return Projects.fromJson(response.data);
  }
}