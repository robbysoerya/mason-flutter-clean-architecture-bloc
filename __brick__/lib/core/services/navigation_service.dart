import 'package:flutter/material.dart';

class NavigationService {
  static final navigationKey =
      GlobalKey<NavigatorState>(debugLabel: 'route key');
  static BuildContext? get ctx => navigationKey.currentState?.context;
}
