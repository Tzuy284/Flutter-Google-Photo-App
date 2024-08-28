import 'package:flutter/material.dart';

ThemeData mainTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF0E76BD),
      primary: const Color(0xFF0E76BD),
    ),
    textTheme: const TextTheme(),
  );
}
