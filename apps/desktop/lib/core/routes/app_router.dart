import 'package:flutter/material.dart';

import '../../features/video_source/presentation/pages/video_source_page.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(builder: (_) => const VideoSourcePage());
    }
  }
}
