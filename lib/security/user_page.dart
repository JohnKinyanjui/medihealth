import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:medihealth/anim/fade_in_up.dart';
import 'package:medihealth/screens/main_screen.dart';
import 'package:path_provider/path_provider.dart' as path_Provider;
import 'landing_page.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  TextEditingController tcontroller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        SizedBox(height: 30,),
          FadeUpIn(1,Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/medi_health.png'),fit: BoxFit.fill)
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          FadeUpIn(2,Padding(
              padding: const EdgeInsets.only(left:18.0),
              child: Text("What is your name?",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25),),
            ),
          ),
          FadeUpIn(3,Padding(
              padding: const EdgeInsets.only(left:18.0,right: 18),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey,width: 0.5))
                ),
                child: TextField(
                  style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25),
                  controller: tcontroller,
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(fontWeight: FontWeight.w300,fontSize: 25)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:  InkWell(
        splashColor: Colors.white,
        hoverColor: Colors.white,
        onTap: () {
          var user_box = Hive.box('user_box');
          user_box.put('name', tcontroller.text);
          print("saved");
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: cool_green,
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Center(child: Text("Continue",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}
