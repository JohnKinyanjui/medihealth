import 'package:flutter/material.dart';
import 'package:medihealth/components/bottom_navigation.dart';
import 'package:medihealth/components/progress_card_widget/circular.dart';
import 'package:medihealth/database/medi_data.dart';
import 'package:medihealth/database/medi_database.dart';
import 'package:medihealth/database/medi_model.dart';
import 'package:medihealth/security/landing_page.dart';

class RecordsListBuilder extends StatelessWidget {
  AppDatabase database;
  MediTableData mediTableData;

  RecordsListBuilder(this.database,this.mediTableData);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top :14.0),
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
             border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Circular(percentage: double.parse(mediTableData.Result).roundToDouble(), color: cool_green,radius: 80,tColor: Colors.black,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 30,),
                        Text(mediTableData.date,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15,color: Colors.grey[400]),),
                        Text(mediTableData.day,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),maxLines: 5,),
                      ],
                    ),
                  ],
                ),
                Text(mediTableData.des,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),maxLines: 5,),

              ],
            ),
          ),
        ),
      );

    }
  }

