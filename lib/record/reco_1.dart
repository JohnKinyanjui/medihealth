import 'package:flutter/material.dart';

class Reco1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("How do you feel today?",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w300),),
            ),
            Slider(value: 1,min: 0,max: 10, onChanged: (new_value){

            }),
          ],
        ),
      ),
    );
  }
}
