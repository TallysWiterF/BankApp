import 'package:bank_app/data/bank_http.dart';
import 'package:bank_app/data/bank_inherited.dart';
import 'package:bank_app/models/bank.dart';
import 'package:bank_app/screens/home.dart';
import 'package:bank_app/themes/purple_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    BankInherited(
      bankModel: BankModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      theme: purpleTheme,
      home: Home(api: BankHttp().dolarToReal()),
    );
  }
}
