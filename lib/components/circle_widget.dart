import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CircleWidget extends StatelessWidget {
  IconData icon;
  String text;

  CircleWidget({this.icon,this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            shape: BoxShape.circle
          ),
          child: Center(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(icon,color: Colors.black,),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text("10",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 20)),
              Text(text,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
            ],
          ),
        ),
        SizedBox(width: 20,),
      ],
    );
  }
}
