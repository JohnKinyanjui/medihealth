import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/components/progress_card_widget/circular.dart';

class ProgressCard extends StatelessWidget {
  final Color color;
  final String type;
  final double percentage;
  final Color pColor;
  final IconData icon;
  final  Function onTap;
  ProgressCard({ this.color, this.type, this.percentage, this.pColor, this.icon, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20)),

          ),child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                 Text(type,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey[700]),),
                  Expanded(child: SizedBox()),
                  Icon(icon,size: 15,)
                ],
              ),
             Circular(percentage: percentage, color: pColor,radius: 100,)
            ],
        ),
          ),
        ),
      ),
    );
  }
}
