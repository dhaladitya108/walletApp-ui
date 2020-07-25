import 'package:best_uidesign/widgets/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:best_uidesign/components/custom_row.dart';

class ExpansesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text('Expenses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomRow(0),
                    CustomRow(1),
                    CustomRow(2),
                    CustomRow(3),
                    CustomRow(4),
                    CustomRow(5),
                  ],
                ),
              ),
            ),
            Expanded(child: PieCharts()),
          ],
        ),
      ],
    );
  }
}
