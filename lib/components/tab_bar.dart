import 'package:flutter/material.dart';
import 'package:medihealth/security/landing_page.dart';

class TabBarCool extends StatelessWidget {
  final Function onTap;
  final Function onTap1;
  final double padding;
  final Color color;
  final Color color1;


  TabBarCool({this.onTap, this.onTap1, this.padding, this.color, this.color1});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                  height: 30,
                   child: Text("Options",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: color),))),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: onTap1,
                  child: Container(
                  height: 30,
                   child: Text("Records",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: color1,))))
              ],
            ),
          ),
          AnimatedPadding(
            duration: Duration(milliseconds: 500),
            padding: EdgeInsets.only(left: padding),
            child: Container(
              height: 8,
              width:8,
              decoration: BoxDecoration(
                color: cool_green,
                shape: BoxShape.circle
              ),
            ),
          )
        ],
      ),
    );
  }
}
