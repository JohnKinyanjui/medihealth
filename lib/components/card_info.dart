import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/components/circle_widget.dart';

class CardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: CircleWidget(
                  icon: Feather.calendar,
                  text: "Age",
                ),
              ),
              Expanded(
              child: CircleWidget(
                icon: Feather.droplet,
                text: "Blood",
              )),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
            Expanded(
             child: CircleWidget(
                icon: Feather.cloud,
                text: "Height",
              )),
              Expanded(
                child: CircleWidget(
                  icon: Feather.watch,
                  text: "Weight",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
