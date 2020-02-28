import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jiffy/jiffy.dart';

double value = 2;
TextEditingController controller = TextEditingController();
TextEditingController desc = TextEditingController();
String getTime(){
  var now = new DateTime.now();
  if (now.hour >= 18) {
    return "Good Evening";
  }else if (now.hour >= 00 ) {
    return "Good Morning";
  }else if (now.hour >= 12) {
    return "Good Afternoon";
  }
}

Icon TimeIcon(){
  var now = new DateTime.now();
  if (now.hour > 24) {
    return Icon(FlevaIcons.sun_outline,color: Colors.grey[900],size: 70,);
  }else if (now.hour >18 ) {
    return Icon(FontAwesome.moon_o,color: Colors.purple,size: 70,);
  }else if (now.hour > 12) {
    return Icon(FlevaIcons.plus_circle_outline,color: Colors.cyan,size: 70,);

  }
}

Color TimeColor(){
  var now = new DateTime.now();
  if (now.hour >= 24) {
    return Colors.orange;
  }else if (now.hour >= 18 ) {
    return Colors.yellow;
  }else if (now.hour >= 12) {
    return  Colors.orange[700];

  }
}

String getDate(){
  var now = new DateTime.now();
  var string_date = Jiffy([now.year, now.month, now.day]).yMMMMd;
  return string_date;// October 18, 2019
}

String getTitle(String title){
  return title;
}

String getDes(String des){
  return des;
}


Color getColor(double mood){
  if (mood == 0) {
    return Colors.grey[500];
  }else if (mood ==  2) {
    return  Colors.orange;
  } else if (mood == 6) {
    return  Colors.purple;
  } else if (mood == 8) {
    return  Color(0xfff44336);
  } else if (mood == 4) {
    return  Colors.blue;
  } else if (mood == 10) {
    return  Colors.brown[500];
  }
}

IconData getIconMood(double mood){
  if (mood == 2) {
    return  FontAwesomeIcons.smile;
  } else if (mood == 4) {
    return  FontAwesomeIcons.sadCry;
  } else if (mood == 6) {
    return  FontAwesomeIcons.meh;
  } else if (mood == 8) {
    return  FontAwesomeIcons.angry;
  } else if (mood == 10) {
    return  FontAwesomeIcons.mehRollingEyes;
  }
}

String getTextMood(double mood){
  if (mood == 2) {
    return  "Happy";
  } else if (mood == 4) {
    return  "Sad";
  } else if (mood == 6) {
    return  "Neutral";
  } else if (mood == 8) {
    return  "Angry";
  } else if (mood == 10) {
    return  "Frustrated";
  }
}


/*
* Happy -2
*Sad -4
* neutal -6
* Angry -8
*awful-10
* */