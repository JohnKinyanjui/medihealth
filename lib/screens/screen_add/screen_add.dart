import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medihealth/anim/fade_in.dart';
import 'package:medihealth/anim/fade_in_down.dart';
import 'package:medihealth/anim/fade_in_up.dart';
import 'package:medihealth/components/container_text.dart';
import 'package:medihealth/database/medi_data.dart';
import 'package:medihealth/screens/main_screen.dart';
import 'package:medihealth/security/landing_page.dart';

import '../../components/mediHealth_brain.dart';

class ScreenAdd extends StatefulWidget {
  @override
  _ScreenAddState createState() => _ScreenAddState();
}

class _ScreenAddState extends State<ScreenAdd> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.white
    ));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Center(
                  child: Transform.rotate(
                   angle: -14.18,
                   child: Text("Record",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 120,color: Colors.grey[300].withOpacity(0.5)),)
                  ),
                )
              ],
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                      IconButton(icon: Icon(Feather.x,color: cool_green,), onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainScreen()));
                      }),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                    FadeInDown(2,Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: Text(getDate(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.grey[500]),),
                      ),
                    ),
                    FadeIn(2, Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("How do you feel?",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25,color: Colors.black),),
                      ),
                    ),
                    FadeUpIn(2,Icon(getIconMood(value),color: Colors.grey[500],size: 50,)),
                    FadeUpIn(3, Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(getTextMood(value) == null ? "moods" : getTextMood(value),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey[500]),),
                      ),
                    ),
                    FadeUpIn(3, Slider(
                          value: value.roundToDouble(),
                          min: 0,
                          max: 10,
                          divisions: 5,
                          inactiveColor: Colors.grey[400],
                          activeColor: cool_green,
                          onChanged: (newValue){
                          setState(() {
                            value = newValue;
                             mood = newValue.toString();
                             print(value);
                          });
                      }),
                    ),

                    FadeUpIn(3, Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text("Have you had enough sleep?",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25,color: Colors.black),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    FadeUpIn(2,ContainerText(text:"Yes",color:sleep == "yes" ? cool_green : Colors.white ,
                        onpress: (){
                          setState(() {
                            if (sleep == "yes") {
                                sleep = "no";
                            }else{
                              sleep = "yes";
                            }
                          });
                        }),
                    ),
                    FadeUpIn(3,ContainerText(text:"No",color:sleep == "no" ? cool_green : Colors.white ,
                          onpress: (){
                            setState(() {
                              if (sleep == "yes") {
                                sleep = "no";
                              }else{
                                sleep = "yes";
                              }
                            });
                          }),
                    ),


                    FadeUpIn(3, Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text("Have you eaten any healthy food recently?",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25,color: Colors.black),),
                    ),
                    ),
                    SizedBox(height: 20,),
                    FadeUpIn(2,ContainerText(text:"Yes",color:health == "yes" ? cool_green : Colors.white ,
                        onpress: (){
                          setState(() {
                            if(health == "yes"){
                                health = "no";
                            }else{
                              health = "yes";
                            }
                          });
                        }),
                    ),
                    FadeUpIn(3,ContainerText(text:"No",color:health == "no" ? cool_green : Colors.white ,
                        onpress: (){
                          setState(() {
                            if(health == "yes"){
                              health = "no";
                            }else{
                              health = "yes";
                            }
                          });
                        }),
                    ),
                  SizedBox(height: 50,)
                  ],
            ),
                ),
              ))
          ],
        ),
      ),
    );
  }
}
