import 'package:dio_http/adapter.dart';
import 'package:dio_http/dio_http.dart';
import 'package:portfolio/src/core/utils/constants.dart';
import 'package:portfolio/src/screens/profile/data/models/profile_model.dart';

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