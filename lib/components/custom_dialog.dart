import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/record/main_record.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height/2.5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height/2.5,
            child: Row(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Medi Health",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                        GestureDetector(
                            onTap: ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainRecord())),
                            child: ListTile(title: Text("Add Record",style: TextStyle(fontSize: 12)),leading: Icon(Feather.clipboard),)),
                        ListTile(title: Text("Prescription",style: TextStyle(fontSize: 12),),leading: Icon(Feather.edit_3),),
                        ListTile(title: Text("Help",style: TextStyle(fontSize: 12),),leading: Icon(Feather.help_circle),),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 20,),
                            Text("Dark Mode",style: TextStyle(fontSize: 12),),
                            SizedBox(width: 10,),
                            Switch(
                                activeColor: Colors.black,
                                value: true, onChanged: (fals){

                            })
                          ],
                        )

                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
