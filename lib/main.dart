import 'package:best_uidesign/data.dart';
import 'package:best_uidesign/widgets/card_section.dart';
import 'package:best_uidesign/widgets/expenses.dart';
import 'package:best_uidesign/widgets/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Circular'),
      home: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 120,
              child: Container(
                child: WalletHeader(),
              ),
            ),
            Expanded(child: CardSection()),
            Expanded(child: ExpansesSection()),
          ],
        ),
      ),
    );
  }
}


