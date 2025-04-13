import 'package:flutter/material.dart';

class BankModel extends ChangeNotifier {
  double available = 0;
  double spent = 0;
  double earned = 0;
  double points = 0;

  void deposit(double money) {
    available += money;
    earned += money;
    points += money;
    notifyListeners();
  }

  void transfer(double money) {
    available -= money;
    points += money;
    spent += money;
    notifyListeners();
  }
}
