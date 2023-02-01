import 'package:{{project_name}}/injector/injector.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> init() async {
  configureBlocInjector();
  configureDataSourceInjector();
  configureRepositoriesInjector();
  configureUsecasesInjector();
}
