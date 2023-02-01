import 'package:{{project_name}}/core/core.dart';

abstract class GuessNationalityRemoteDataSource {
  Future<GuessNationalityEntity> getNationality(String name);
}

class GuessNationalityRemoteDataSourceImpl
    implements GuessNationalityRemoteDataSource {
  final ApiService apiService;

  GuessNationalityRemoteDataSourceImpl({required this.apiService});

  @override
  Future<GuessNationalityEntity> getNationality(String name) async {
    final resp = await apiService.get('/', queryParameters: {'name': name});
    if (resp.statusCode == 200) {
      return GuessNationalityModel.fromJson(resp.data).toEntity();
    } else {
      throw ServerException();
    }
  }
}
