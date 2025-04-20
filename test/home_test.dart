import 'package:bank_app/components/box_card.dart';
import 'package:bank_app/data/bank_inherited.dart';
import 'package:bank_app/models/bank.dart';
import 'package:bank_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'bank_http.mocks.dart';

void main() {
  late MockBankHttp httpMock;

  setUp(() {
    httpMock = MockBankHttp();
    when(httpMock.dolarToReal()).thenAnswer((_) async => ('5'));
  });

  testWidgets('My widget has a text "Spend"', (tester) async {
    await tester.pumpWidget(
      BankInherited(
        bankModel: BankModel(),
        child: MaterialApp(
          home: Home(api: httpMock.dolarToReal()),
        ),
      ),
    );
    expect(find.text('Spent'), findsOneWidget);
  });

  testWidgets('Finds a LinearProgressIndicator', (tester) async {
    await tester.pumpWidget(
      BankInherited(
        bankModel: BankModel(),
        child: MaterialApp(
          home: Home(api: httpMock.dolarToReal()),
        ),
      ),
    );

    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  testWidgets('Finds a AccountStatus', (tester) async {
    await tester.pumpWidget(
      BankInherited(
        bankModel: BankModel(),
        child: MaterialApp(
          home: Home(
            api: httpMock.dolarToReal(),
          ),
        ),
      ),
    );

    expect(find.byKey(const Key("accountStatusKey")), findsOneWidget);
  });

  testWidgets('Finds 5 BoxCards', (tester) async {
    await tester.pumpWidget(
      BankInherited(
        bankModel: BankModel(),
        child: MaterialApp(
          home: Home(
            api: httpMock.dolarToReal(),
          ),
        ),
      ),
    );

    expect(find.byWidgetPredicate((widget) => widget is BoxCard),
        findsNWidgets(5));
  });

  testWidgets("When tap Deposit should upload earned in 10", (tester) async {
    await tester.pumpWidget(
      BankInherited(
        bankModel: BankModel(),
        child: MaterialApp(
          home: Home(api: httpMock.dolarToReal()),
        ),
      ),
    );

    await tester.tap(find.text('Deposit'));
    await tester.pumpAndSettle();
    expect(find.text('\$10.0'), findsNWidgets(2));
  });

  testWidgets("Testing MockHtpp dolarToReal", (tester) async {
    await tester.pumpWidget(
      BankInherited(
        bankModel: BankModel(),
        child: MaterialApp(
          home: Home(api: httpMock.dolarToReal()),
        ),
      ),
    );
    verify(httpMock.dolarToReal()).called(1);
  });
}
