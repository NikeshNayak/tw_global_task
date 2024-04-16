import 'package:flutter/material.dart';
import 'package:tw_global_task/config/routes/routes.dart';
import 'package:tw_global_task/features/image_gallery/presentation/pages/image_gallery_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    // var routingData = settings.name!.getRoutingData;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const ImageGalleryScreen(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
    }
  }
}
