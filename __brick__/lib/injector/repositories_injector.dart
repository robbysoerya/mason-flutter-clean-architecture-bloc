import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/injector/main_injector.dart';

Future<void> configureRepositoriesInjector() async {
  di.registerLazySingleton<GuessNationalityRepository>(
    () => GuessNationalityRepositoryImpl(
      remoteDataSource: di(),
      networkInfo: di(),
    ),
  );
}
