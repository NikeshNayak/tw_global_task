import 'package:flutter/material.dart';

const String baseUrl = "https://pixabay.com";
const pixabayAPIKey = '43418329-55e2ba823fb6303ddba2bc73b';

String formatCounts(int count) {
  if (count < 1000) {
    return '$count';
  } else if (count < 1000000) {
    double k = count / 1000;
    return '${k.toStringAsFixed(1)}K';
  } else {
    double m = count / 1000000;
    return '${m.toStringAsFixed(1)}M';
  }
}
//flutter pub run build_runner build
//flutter pub run build_runner
void showSnackMessage({required BuildContext context, required String title, required String text, required IconData icon, Color color = Colors.red, int seconds = 3, bool isFloating = false}) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
      behavior: isFloating ? SnackBarBehavior.floating : null,
      shape: isFloating ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)) : null,
      content: Row(
        children: [
          Icon(
            icon,
            color: Colors.white.withOpacity(0.5),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 5),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      backgroundColor: color,
      duration: Duration(seconds: seconds),
    ),
  );
}