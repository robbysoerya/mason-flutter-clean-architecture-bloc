import 'package:{{project_name}}/features/guess_nationality/presentation/presentation.dart';
import 'package:{{project_name}}/injector/main_injector.dart';

Future<void> configureBlocInjector() async {
  di.registerFactory(
    () => GuessNationalityBloc(
      usecase: di(),
    ),
  );
}
