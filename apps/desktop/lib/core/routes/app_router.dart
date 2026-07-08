import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
