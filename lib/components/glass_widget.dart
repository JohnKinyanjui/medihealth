import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hive/hive.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:medihealth/security/landing_page.dart';

class GlassWidget extends StatelessWidget {
  Function onTap;
  String text;
  double progress;

  GlassWidget({this.progress,this.onTap,this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/1.5,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width/2)),

      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height:200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: LiquidCircularProgressIndicator(
              value: progress, // Defaults to 0.5.
              valueColor: AlwaysStoppedAnimation(cool_green), // Defaults to the current Theme's accentColor.
              backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
              borderColor: Colors.white,
              borderWidth: 0.0,
              direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Row(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Text(text,style: TextStyle(fontSize: 90,fontWeight: FontWeight.w900),),
                Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Text(text == "1" ? "Glass":"Glasses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                ),
                Expanded(child: SizedBox()),
              ],
            )),
          ),

          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: cool_green,
                shape: BoxShape.circle,
              ),
            child: Icon(Feather.plus,size: 50,color: Colors.black,),
            ),
          ),
        ],
      ),
    );
  }
}
