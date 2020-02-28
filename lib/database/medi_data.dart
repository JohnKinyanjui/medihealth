 import 'package:flutter/cupertino.dart';
import 'package:jiffy/jiffy.dart';
import 'package:medihealth/components/mediHealth_brain.dart';
import 'package:intl/intl.dart';
import 'package:medihealth/database/medi_database.dart';
 var dat = DateTime.now();

String date = getDate();
 String day = DateFormat('EEEE').format(dat);
 String mood = "2";
 String sleep = "yes";
 String health = "yes";
 String des = "hjjhfg";
 String walking = "0";
 String water = "0";
 String sleep_time = "0";
 String calories = "0";


double getWalkingPercentage(String walking){

}

 double getMood(mood){
   if (mood == "2") {
     return  10;
   } else if (mood == "4") {
     return  2.5;
   } else if (mood == "6") {
     return  6;
   } else if (mood == "8") {
     return  2.5;
   } else if (mood == "10") {
     return  4;
   }
 }

 double getSleep(sleep){
  if (sleep == "yes") {
    return 7.5;
  }else{
    return 0;
  }
 }

 double getHealth(sleep){
   if (sleep == "yes") {
     return 7.5;
   }else{
     return 0;
   }
 }
 double qiuzpercentage(md,slp,hlth){
  double result = getMood(md) +getSleep(slp) + getHealth(hlth);
  return result;
 }

 double FinalResult(double qz,wlk,wtr,slp,clr){
   //18.75
   //10000 steps
   //8
   //7hrs
   //250 - 600

   double t_wlk = wlk/10000 * 18.75;
   double t_wtr = wtr/8 * 18.75;
   double t_slp = slp/8 * 18.75;
   double t_clr = clr/8 * 18.75;
   double total = qz + t_wlk + t_wtr +t_slp+t_clr;
   return total;
 }

 double getWlk(wlk){
   double t_wlk = wlk/90 * 100;
   return t_wlk;
 }

 double getWtr(data){
   double t_wtr = data/8 * 100;
   return t_wtr;
 }

 double getSlp(data){
   double t_slp = data/8 * 100;
   return t_slp;
 }

 double getclr(data){
   double t_clr = data/600 * 18.75;
   return t_clr;
 }

 double getTWlk(wlk){
   double t_wlk = wlk/90 * 18.75;
   return t_wlk;
 }

 double getTWtr(data){
   double t_wtr = data/8 * 18.75;
   return t_wtr;
 }

 double getTSlp(data){
   double t_slp = data/8 * 18.75;
   return t_slp;
 }

 double getTclr(data){
   double t_clr = data/600 * 18.75;
   return t_clr;
 }


 String getTit(data){
  if (data >= 80) {
    return "Excellent";
  }else if (data >=60) {
    return "Well done";
  }else if (data>=40) {
    return "Fair";
  }else if (data >= 20) {
    return "Growing";
  }else if (data >= 0) {
    return "Beginning";
  }
 }

 String getdes(data){
   if (data >= 0) {
     return "You can do better by completing today's routine";
   }else if (data >25) {
     return "Boring";
   }else if (data>50) {
     return "You have been able to complete half of todays medi kit";
   }else if (data > 60) {
     return "Well Done, you are nearly there.";
   }else if (data > 80) {
     return "You have been able to complete todays medi kit";
   }
 }


 double getPerc(percentage,width){
   double pp = percentage/100 * width;
   return pp;
 }

