import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:medihealth/anim/fade_in_up.dart';
import 'package:medihealth/screens/main_screen.dart';

import '../main.dart';
import 'landing_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    @override
    void initState() {
      super.initState();
      loadData();
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: FadeUpIn(2,Container(
                height: 150,
                width: 150,
                  child: Image.asset("assets/images/medi.png")),
            ),
          )
        ],
      ),
    );
  }
    getNextActivity() async{
      print("done");
      var box = await Hive.openBox('user_box');
      if(box.isEmpty){
        print("done1");
        return Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LandingPage()));
      }else {
        print("done2");
        return Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainScreen()));
      }
    }
    Future<Timer> loadData() async {
      return new Timer(Duration(seconds: 3), getNextActivity);
    }
}