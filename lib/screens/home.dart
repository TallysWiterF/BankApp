import 'package:bank_app/components/sections/account_actions.dart';
import 'package:bank_app/components/sections/account_points.dart';
import 'package:bank_app/components/sections/header.dart';
import 'package:bank_app/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  RecentActivity(),
                  AccountActions(),
                  AccountPoints(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
