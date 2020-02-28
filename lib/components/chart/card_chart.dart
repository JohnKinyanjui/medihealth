import 'package:flutter/material.dart';
import 'lines.dart';
class CardChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 8,),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Lines(),
                  Expanded(child: SizedBox()),
                  Lines(),
                  Expanded(child: SizedBox()),
                  Lines(),
                  Expanded(child: SizedBox()),
                  Lines(),
                  Expanded(child: SizedBox()),
                  Lines(),
                  Expanded(child: SizedBox()),
                  Lines(),
                  Expanded(child: SizedBox()),
                  Lines(),
                  Expanded(child: SizedBox()),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Text("Mo",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.grey)),
                Expanded(child: SizedBox()),
                Text("Tu",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.grey)),
                Expanded(child: SizedBox()),
                Text("We",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.grey)),
                Expanded(child: SizedBox()),
                Text("Th",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.grey)),
                Expanded(child: SizedBox()),
                Text("Fr",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.grey)),
                Expanded(child: SizedBox()),
                Text("Sa",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.grey)),
                Expanded(child: SizedBox()),
                Text("Su",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.grey)),
                Expanded(child: SizedBox()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
