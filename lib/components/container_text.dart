import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  final String text;
  final Color color;
  final Function onpress;
  ContainerText({this.text, this.color, this.onpress});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Colors.grey[200],width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
