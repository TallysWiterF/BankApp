import 'package:bank_app/components/sections/actions.dart';
import 'package:bank_app/components/sections/header.dart';
import 'package:bank_app/components/sections/points_exchange.dart';
import 'package:bank_app/components/sections/recent_activities.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            RecentActivity(),
            ActionsSection(),
            PointsExchange(),
          ],
        ),
      ),
    );
  }
}
