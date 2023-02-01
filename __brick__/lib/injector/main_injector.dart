import 'package:{{project_name}}/injector/injector.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> init() async {
  await configureBlocInjector();
  await configureDataSourceInjector();
  await configureRepositoriesInjector();
  await configureUsecasesInjector();
  await configureServiceInjector();
}
