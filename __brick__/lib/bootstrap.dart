import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:{{project_name}}/injector/injector.dart';

class AppProviderOberserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log('onChange: bloc: $bloc, currentState: ${change.currentState}');
  }

  @override
  void onClose(BlocBase bloc) {
    log('onClose: $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    log('onCreate: $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError: $bloc, error: $error, $stackTrace');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log('onEvent: $bloc, event: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log('onTransition: $bloc, transition: $transition');
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await init();
  await Hive.initFlutter();
  await Hive.openBox('config');
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppProviderOberserver();
  runApp(await builder());
}
