import 'package:flutter/material.dart';
import 'package:medihealth/security/landing_page.dart';

class ProgressBar extends StatelessWidget {
  double width;
  ProgressBar({this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 10,
            width: width,
            decoration: BoxDecoration(
                color: cool_green,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          ),
        ],
      ),
    );
  }
}

