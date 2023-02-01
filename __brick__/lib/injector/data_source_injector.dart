import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/injector/main_injector.dart';

Future<void> configureDataSourceInjector() async {
  di.registerLazySingleton<GuessNationalityRemoteDataSource>(
    () => GuessNationalityRemoteDataSourceImpl(
      apiService: di(),
    ),
  );
}
