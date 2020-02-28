import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/security/landing_page.dart';

class ScreenUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
               Expanded(child: CoolCard(title: "Settings",icon: Feather.settings,onPress: (){

               },)),
                Expanded(child: CoolCard(title: "Settings",icon: Feather.edit_3,onPress: (){

                },)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: CoolCard(title: "Settings",icon: Feather.share,onPress: (){

                },)),
                Expanded(child: CoolCard(title: "Settings",icon: Feather.share,onPress: (){

                },)),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class CoolCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onPress;
  
  CoolCard({this.title, this.icon, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon),
            ),
            Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Make changes where it is needed",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.grey),textAlign: TextAlign.center,),
            ),

            Expanded(child: SizedBox()),
            Container(
              width: double.infinity,
              height:50,
              decoration: BoxDecoration(
                  color: cool_green,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
             child: Center(child: Text("Open",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}

