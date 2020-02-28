import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/security/landing_page.dart';

int index = 0;

double getDouble(index){
  if (index == 0) {
    return 1.5;
  }else if (index == 1) {
    return 3.45;
  }else if (index == 2) {
    return 5.45;
  }      
}

class BottomNavigation extends StatelessWidget {
  final Function onpress_1;
  final Function onpress_2;
  final Function onpress_3;


  BottomNavigation({@required this.onpress_1,@required this.onpress_2,@required this.onpress_3});
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width/7;
    return Container(
      height: 55,
      width: double.infinity,
      color: Colors.white,
      child:  Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: SizedBox()),
              IconButton(icon: Icon(Feather.home,color:index == 0 ? Colors.black :Colors.grey,), onPressed: onpress_1),
              Expanded(child: SizedBox()),
              IconButton(icon: Icon(Feather.grid,color:index == 1 ? Colors.black :Colors.grey,), onPressed: onpress_2),
              Expanded(child: SizedBox()),
              IconButton(icon: Icon(Feather.user,color:index == 2 ? Colors.black : Colors.grey), onPressed: onpress_3),
              Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: <Widget>[
              AnimatedPadding(padding: EdgeInsets.only(left: padding*getDouble(index)), duration: Duration(milliseconds: 500),
                child:Container(
                  height: 6,
                  width: 6,
                  decoration: BoxDecoration(
                    color: cool_green,
                    shape: BoxShape.circle
                  ),
                ),)
            ],
          )
        ],
      ),
    );
  }
}
