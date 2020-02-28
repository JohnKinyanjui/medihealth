import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medihealth/anim/fade_in.dart';
import 'package:medihealth/components/medi_kit.dart';
import 'package:medihealth/components/progress_card_widget/progress_card.dart';
import 'package:medihealth/database/medi_data.dart';
import 'package:medihealth/database/medi_database.dart';
import 'package:medihealth/security/landing_page.dart';
import 'package:provider/provider.dart';
import 'package:medihealth/pages/page_water.dart';
import 'package:medihealth/pages/page_walking.dart';
import 'package:medihealth/pages/page_sleep.dart';
import 'package:medihealth/pages/page_calories.dart';


class ScreenRecords extends StatefulWidget {
  ScreenRecords({Key key}) : super(key: key);

  @override
  _ScreenRecordsState createState() => _ScreenRecordsState();
}

class _ScreenRecordsState extends State<ScreenRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: FadeIn(1, Text("DashBoard",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: cool_green),)),
         ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildMedi(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Medicines",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: cool_green,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 2),
                child: Text("Never miss your prescriptions",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.grey,),),
              ),

            ],
          ),
        ),
    );
  }
}
StreamBuilder<List<MediTableData>> _buildMedi(BuildContext context){
  final database = Provider.of<AppDatabase>(context);
  return StreamBuilder(
    stream: database.watchAllData(),
    builder: (context, AsyncSnapshot<List<MediTableData>> snapshot){
      final medi = snapshot.data ?? List();
      if (snapshot.hasData) {
              final medi_list = medi[snapshot.data.length-1];
              return   Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(child: FadeIn(2,ProgressCard(
                        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageWalking(mediTableData: medi_list,))),
                        color: Colors.grey[50],pColor: Colors.red[900],percentage: getWlk(double.parse(medi_list.walking)).roundToDouble(),type: "Walking",icon: FontAwesomeIcons.shoePrints,))),
                      Expanded(child: FadeIn(3, ProgressCard(
                        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageWater(mediTableData: medi_list,))),
                        color: Colors.grey[50],pColor: Colors.blue,percentage: getWtr(double.parse(medi_list.water)) > 100 ? 100 :getWtr(double.parse(medi_list.water)) ,type: "Water",icon: Feather.droplet,)),)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: FadeIn(4, ProgressCard(
                        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageSleep(mediTableData: medi_list,))),
                        color: Colors.grey[50],pColor: Colors.orange,percentage: getSlp(double.parse(medi_list.sleep_time).roundToDouble()) > 100 ? 100 : getSlp(double.parse(medi_list.sleep_time).roundToDouble()),type: "Sleep",icon: FontAwesomeIcons.bed,))),
                      Expanded(child: FadeIn(5, ProgressCard(color: Colors.grey[50],pColor: Colors.green,percentage: getclr(double.parse(medi_list.calories)),type: "Calories",icon: Feather.cloud,)))
                    ],
                  ),
                ],
              );
            }
            return Center(child: CircularProgressIndicator(strokeWidth: 1,));

    },
  );
}