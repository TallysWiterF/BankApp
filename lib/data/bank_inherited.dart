import 'package:bank_app/models/bank.dart';
import 'package:flutter/material.dart';

class BankInherited extends InheritedNotifier<BankModel> {
  const BankInherited({
    super.key,
    required BankModel bankModel,
    required super.child,
  }) : super(notifier: bankModel);

  static BankModel of(BuildContext context) {
    final BankInherited? inherited =
        context.dependOnInheritedWidgetOfExactType<BankInherited>();
    assert(inherited != null, 'No BankInherited found in context');
    return inherited!.notifier!;
  }
}
