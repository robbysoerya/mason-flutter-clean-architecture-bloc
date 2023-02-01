import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/injector/main_injector.dart';

Future<void> configureUsecasesInjector() async {
  di.registerLazySingleton(
    () => GetGuessNationalityUsecase(
      repository: di(),
    ),
  );
}
