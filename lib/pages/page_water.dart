import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:medihealth/components/bottom_navigation.dart';
import 'package:medihealth/components/glass_widget.dart';
import 'package:medihealth/database/medi_data.dart';
import 'package:medihealth/database/medi_database.dart';
import 'package:medihealth/screens/main_screen.dart';
import 'package:medihealth/security/landing_page.dart';
import 'package:provider/provider.dart';

class PageWater extends StatefulWidget {
  final MediTableData mediTableData;

  const PageWater({Key key, this.mediTableData}) : super(key: key);
  @override
  _PageWaterState createState() => _PageWaterState();
}

class _PageWaterState extends State<PageWater> {
  int water_taken = 0;

  @override
  Widget build(BuildContext context) {
    double wtr = double.parse(widget.mediTableData.water);
    int water = int.parse(widget.mediTableData.water);
    double progress = (wtr/8*100)/100 ;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(icon: Icon(Feather.x,color: cool_green,size: 30,),onPressed: ()=>Navigator.of(context).pop(),),
              Padding(
                padding: const EdgeInsets.only(left:16.0,right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Water",style:TextStyle(fontWeight: FontWeight.w900,color: cool_green,fontSize: 35),),
                    Text("You have taken ${widget.mediTableData.water} glasses of water",style:TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 15),),
                    SizedBox(height: 10,),
                    GlassWidget(
                      progress: progress,
                      text: water_taken.toString(),
                      onTap: (){
                       setState(() {
                         water_taken++;
                       });
                     },),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            int twater_taken = int.parse(widget.mediTableData.water)  + water_taken;
                            double result = double.parse(widget.mediTableData.Result) + getTWtr(double.parse(water_taken.toString()));
                            final database = Provider.of<AppDatabase>(context,listen: false);
                            database.updateData(widget.mediTableData.copyWith(water: twater_taken.toString(),Result:int.parse(widget.mediTableData.water) >= 8 ? widget.mediTableData.Result : result.toStringAsFixed(1) ));
                            print(result);
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainScreen()));
                          },
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: cool_green,
                              borderRadius: BorderRadius.all(Radius.circular(29))
                            ),
                            child: Center(child: Text("Complete",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}


