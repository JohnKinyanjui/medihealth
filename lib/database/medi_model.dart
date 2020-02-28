import 'package:flutter/cupertino.dart';

class MediModel{
  final String date;
  final String day;
  final String mood;
  final String sleep;
  final String health;
  final String des;
  final String walking;
  final String water;
  final String sleep_time;
  final String calories;

  MediModel({@required this.date,@required this.day,@required this.mood,@required this.sleep,@required this.health,@required this.des,@required this.walking,@required this.water,@required this.sleep_time,@required this.calories});
  Map<String, dynamic> toMap(){
   return {
       'date': date,
       'day': day,
       'mood': mood,
       'sleep': sleep,
       'health': health,
       'des': des,
       'walking': walking,
       'water': water,
       'sleep_time': sleep_time,
       'calories': calories};
}




}