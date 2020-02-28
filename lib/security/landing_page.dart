import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/components/page_widget.dart';
import 'package:medihealth/security/user_page.dart';

Color cool_green = Color(0xff00D382);

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int index;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         IconButton(icon: Icon(Feather.x,color: cool_green,), onPressed: (){}),
         Container(
           height: 500,
           child: PageView(
             controller: controller,
             onPageChanged: (new_index){
               setState(() {
                 index = new_index;
               });
             },
             children: <Widget>[
               Page_Widget(image_Path: "assets/images/ill_one.JPG",text: "Record your daily health life and we will anaylze it for you.",),
               Page_Widget(image_Path: "assets/images/ill_two.JPG",text: "Our health is something we often take for granted. But, there are some things in life that should never be taken for granted. Take care of yourself..",),
               Page_Widget(image_Path: "assets/images/medi.png",text: "Welcome to Medi Health.My name Medi and here to assist you.Click Continue",),

             ],
           ),
         ),
        ],
      ),
      bottomNavigationBar: InkWell(
        splashColor: Colors.white,
        hoverColor: Colors.white,
        onTap: () => index == 2 ? Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage())): controller.jumpToPage(index+1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: cool_green,
            ),
           child: Center(child: Text(index == 2 ?"Continue" : "Next",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}
