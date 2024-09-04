import 'package:bank_app/themes/themes_colors.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ThemeData PrimaryTheme = ThemeData(
  useMaterial3: true,
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
  ),
);
