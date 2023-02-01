import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/injector/main_injector.dart';

Future<void> configureServiceInjector() async {
  di.registerLazySingleton(() => ApiService());
  di.registerLazySingleton(() => InternetConnectionChecker());
  di.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      dataConnectionChecker: di(),
    ),
  );
}
