import 'dart:developer';

import 'package:flutter/material.dart';

class RouterObserver extends RouteObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    log(
      '''didPop(route: ${route.settings.name}, previousRoute: ${previousRoute?.settings.name})''',
    );
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    log(
      '''didPush(route: ${route.settings.name},previousRoute: ${previousRoute?.settings.name})
      ''',
    );
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log(
      '''didRemove(route: ${route.settings.name},previousRoute: ${previousRoute?.settings.name})
      ''',
    );
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log(
      '''didReplace(newRoute: ${newRoute?.settings.name},oldRoute: ${oldRoute?.settings.name})
      ''',
    );
  }
}
