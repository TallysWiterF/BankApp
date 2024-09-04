import 'package:bank_app/screens/home.dart';
import 'package:bank_app/themes/primary_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BankApp());
}

class BankApp extends StatelessWidget {
  const BankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BankApp',
      theme: PrimaryTheme,
      home: const Home(),
    );
  }
}
