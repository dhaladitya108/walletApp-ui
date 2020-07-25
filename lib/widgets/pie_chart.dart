import 'dart:math';
import 'package:best_uidesign/data.dart';
import 'package:flutter/material.dart';

class PieCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: customShadow,
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: <Widget>[
          // CustomPaint(
          //   painter: PieChartPainter(),
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     color: Colors.red,
          //   ),
          // ),
          Center(
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: customShadow,
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Center(
          //   child: expensePieChart(),
          // ),
        ],
      ),
    );
  }

  // Widget expensePieChart() {
  //   Map<String, double> expenseDataMap = Map();
  //   double total = 0;
  //   expenses.forEach((value) {
  //     total += value['amount'];
  //   });
  //   for (int i = 0; i < expenses.length; i++) {
  //     expenseDataMap[expenses[i]['name']] =
  //         (expenses[i]['amount'] / total) * 2 * pi;
  //   }
  //   return PieChart(
  //     showChartValuesOutside: true,
  //     showChartValueLabel: false,
  //     dataMap: expenseDataMap,
  //     chartType: ChartType.ring,
  //     chartRadius: 100,
  //     colorList: pieColors,
  //     showLegends: false,
  //     initialAngle: -pi / 2,
  //   );
  // }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.height / 2, size.width / 2);
    double radius = min(size.height / 2, size.width / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    double total = 0;
    expenses.forEach((element) {
      total += element['amount'];
    });

    var startRadian = -pi / 2;
    for (var i = 0; i < expenses.length; i++) {
      print(i);
      var currentExpense = expenses[i];
      var sweepRadian = (currentExpense / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
