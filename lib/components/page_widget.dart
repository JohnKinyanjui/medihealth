import 'package:flutter/material.dart';

class Page_Widget extends StatelessWidget {

  final String text;
  final String image_Path;
  Page_Widget({this.text, this.image_Path});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height/1.5,
        width: MediaQuery.of(context).size.width/1.3,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey
              )
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image_Path),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),textAlign: TextAlign.center,),
            )),
            Expanded(child: SizedBox()),

          ],
        ),
      ),
    );
  }
}
