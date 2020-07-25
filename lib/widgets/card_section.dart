import 'package:best_uidesign/data.dart';
import 'package:best_uidesign/widgets/card_details.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.topLeft,
          child: Text(
            'Selected Card',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 13),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      boxShadow: customShadow,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        top: 100,
                        bottom: -160,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: customShadow,
                            color: Colors.white38,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        left: -300,
                        top: -100,
                        bottom: -100,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: customShadow,
                            color: Colors.white24,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      CardDetails(),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
