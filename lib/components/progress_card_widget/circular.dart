import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Circular extends StatelessWidget {
  final double percentage;
  final Color color;
  final double radius;
  final Color tColor;
  Circular({@required this.percentage,@required this.color, this.radius, this.tColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CircularPercentIndicator(
        radius: radius,
        lineWidth: 10,
        backgroundColor: Colors.grey[100],
        circularStrokeCap: CircularStrokeCap.round,
        percent: percentage/100,
        animation: true,
        animationDuration: 1000,
        center: new Text("${percentage.toString()}%",style: TextStyle(color: tColor == null ? Colors.black : tColor),),
        progressColor: color,
      ),
    );
  }
}

