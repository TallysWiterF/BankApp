import 'package:bank_app/components/sections/actions.dart';
import 'package:bank_app/components/sections/header.dart';
import 'package:bank_app/components/sections/points_exchange.dart';
import 'package:bank_app/components/sections/recent_activities.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.api});
  final Future<String> api;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(
              api: api,
            ),
            const RecentActivity(),
            const ActionsSection(),
            const PointsExchange(),
          ],
        ),
      ),
    );
  }
}
