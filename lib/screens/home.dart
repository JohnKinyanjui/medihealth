import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hive/hive.dart';
import 'package:medihealth/anim/fade_in.dart';
import 'package:medihealth/anim/fade_in_up.dart';
import 'package:medihealth/components/mediHealth_brain.dart';
import 'package:medihealth/database/medi_data.dart';
import 'package:medihealth/database/medi_database.dart';
import 'package:medihealth/security/landing_page.dart';
import 'package:provider/provider.dart';
import '../components/chart/card_chart.dart';
import 'package:medihealth/components/progress_bar.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String my_name;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var box = Hive.box('user_box');
    var name = box.get('name');
    setState(() {
      my_name = name;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Feather.x), onPressed: (){

        },color: cool_green,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           FadeIn(0.5,
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("${getTime()}, $my_name",style: TextStyle(fontWeight: FontWeight.w600,color: cool_green,fontSize: 28),),
             ),
           ),
            FadeUpIn(1,Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Colors.grey[100],
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                 ),
                 child: Column(
                   children: <Widget>[
                     _buildMediHome(context),


                   ],
                 ),
               ),
             ),
           ),
           FadeIn(2, Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: <Widget>[
                   Icon(FontAwesome.lightbulb_o),
                   SizedBox(width: 2,),
                   Text("Tips",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: cool_green),),
                 ],
               ),
             ),
           ),
            FadeUpIn(2, Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Expanded(child: Text("Vitamins are really cool take them every time",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15,color: Colors.grey))),
                     SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2015/07/15/16/05/watermelon-846357_960_720.jpg"),fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            FadeIn(3,Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Daily Report",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: cool_green)),
              ),
            ),
            FadeUpIn(2,Padding(
                padding: const EdgeInsets.only(left :8.0,right:8.0,top: 2.0,bottom :8.0,),
                child: Text("This report consist of specific data given daily according to your input.",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15,color: Colors.grey)),
              ),
            ),
            FadeUpIn(2,CardChart())
          ],
        ),
      ),
    );
  }
}

StreamBuilder<List<MediTableData>> _buildMediHome(BuildContext context){
  final database = Provider.of<AppDatabase>(context);
  return StreamBuilder(
    stream: database.watchAllData(),
    builder: (context, AsyncSnapshot<List<MediTableData>> snapshot){
      final medi = snapshot.data ?? List();
      if (snapshot.hasData) {
        final medi_list = medi[snapshot.data.length-1];
        return    Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(getTit(double.parse(medi_list.Result)),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.black),),
                        Text(getdes(double.parse(medi_list.Result)),style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15,color: Colors.grey),),
                        Text("Well Done",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.grey[50]),),

                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(double.parse(medi_list.Result) >100 ? "100" :double.parse(medi_list.Result).toStringAsFixed(0),style: TextStyle(fontSize: 70,fontWeight: FontWeight.w700),),
                  Padding(
                    padding: const EdgeInsets.only(top :18.0,left: 2),
                    child: Icon(Feather.percent,color: Colors.black,),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8 ,bottom:10.0),
                  child: ProgressBar(width: getPerc(double.parse(medi_list.Result),MediaQuery.of(context).size.width),)
              )
            ],
          ),
        );
      }
      return Center(child: CircularProgressIndicator(strokeWidth: 1,));

    },
  );
}