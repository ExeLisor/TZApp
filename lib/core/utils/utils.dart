import 'package:flutter/material.dart';

LinearGradient buildShimmerGradient(BuildContext context) {
  final isDark = Theme.of(context).brightness == Brightness.dark;
  return LinearGradient(
    colors: [
      isDark ? Colors.grey[850]! : Colors.grey[300]!,
      isDark ? Colors.grey[800]! : Colors.grey[200]!,
      isDark ? Colors.grey[850]! : Colors.grey[300]!,
    ],
    stops: const [0.1, 0.3, 0.4],
    begin: const Alignment(-1.0, -0.3),
    end: const Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );
}
