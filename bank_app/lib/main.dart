import 'package:bank_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BankApp());
}

class BankApp extends StatelessWidget {
  const BankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BankApp',
      home: Home(),
    );
  }
}
