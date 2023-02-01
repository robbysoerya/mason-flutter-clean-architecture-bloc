import 'package:{{project_name}}/core/core.dart';
import 'package:{{project_name}}/features/guess_nationality/guess_nationality.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

final router = GoRouter(
  navigatorKey: _key,
  debugLogDiagnostics: true,
  initialLocation: RouterConstant.guessNationalityPage,
  observers: [RouterObserver()],
  routes: routes,
);

List<GoRoute> get routes {
  return [
    GoRoute(
      name: 'home',
      path: RouterConstant.guessNationalityPage,
       builder: (context, state) => BlocProvider(
        create: (context) => di<GuessNationalityBloc>(),
        child: const GuessNationalityPage(),
      ),
    ),
  ];
}
