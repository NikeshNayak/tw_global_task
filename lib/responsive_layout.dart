import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveLayout({
    super.key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
  });

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= 480;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 480 && MediaQuery.of(context).size.width <= 1024;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1024;
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 1024
        ? largeScreen
        : MediaQuery.of(context).size.width > 480
            ? mediumScreen
            : smallScreen;
  }
}
