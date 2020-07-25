import 'package:best_uidesign/data.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final int index;

  CustomRow(this.index);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(height: 30),
        CircleAvatar(
          radius: 5,
          backgroundColor: pieColors[index],
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          expenses[index]['name'],
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
