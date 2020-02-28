import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medihealth/anim/fade_in.dart';
import 'package:medihealth/anim/fade_in_up.dart';
import 'package:medihealth/database/medi_data.dart';

import '../../components/mediHealth_brain.dart';
import 'screen_add.dart';
class ScreenRead extends StatefulWidget {
  @override
  _ScreenReadState createState() => _ScreenReadState();
}

class _ScreenReadState extends State<ScreenRead> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white
    ));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(child: SizedBox()),
                            Icon(getIconMood(value),size: 100,color: getColor(value).withOpacity(0.15),)
                          ],
                        ),

                        FadeIn(1,Text(getTitle(controller.text.toString()),style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50,color: Colors.grey[00]),)),
                        FadeIn(2,Text(getDate(),style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.grey[500]),)),
                        FadeUpIn(2,TextField(
                            textAlign: TextAlign.justify,
                            style:TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
                            controller:  desc,
                            onChanged: (descr){
                              setState(() {
                                des = descr;
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Description",
                              hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)
                            ),
                          ),
                        )
                      ],
                  ),
                ),
              ),
    );
  }
}






