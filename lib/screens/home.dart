import 'package:bank_app/components/box_card.dart';
import 'package:bank_app/components/sections/header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[Header(), BoxCard(boxContent: Text("Ola mundo"))],
      ),
    );
  }
}
