import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/database/medi_data.dart';
import 'package:medihealth/database/medi_database.dart';
import 'package:medihealth/screens/main_screen.dart';
import 'package:medihealth/security/landing_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';

class PageSleep extends StatefulWidget {
  final MediTableData mediTableData;
  const PageSleep({Key key, this.mediTableData}) : super(key: key);
  @override
  _PageSleepState createState() => _PageSleepState();
}

class _PageSleepState extends State<PageSleep> {

  int sleep_time = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: IconButton(icon: Icon(Feather.x,size: 30,color: cool_green,), onPressed: (){
                       Navigator.of(context).pop();
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height/2.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.2),blurRadius: 125)
                          ]
                        ),
                        child: Column(
                          children: <Widget>[
                            CircularPercentIndicator(
                              radius: 150,
                              lineWidth: 10,
                              percent: double.parse(widget.mediTableData.sleep_time)/8*100/100 > 1.0 ? 1.0 : double.parse(widget.mediTableData.sleep_time)/8*100/100,
                              animation: true,
                              backgroundColor: Colors.grey[100],
                              progressColor: cool_green,
                              circularStrokeCap: CircularStrokeCap.round,
                              animationDuration: 1000,
                              center: new Text("${getSlp(double.parse(widget.mediTableData.sleep_time))}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300,color: cool_green),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Time in Bed",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.grey),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("${widget.mediTableData.sleep_time} hrs",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.black),),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height/2.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: cool_green,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(color: Colors.black.withOpacity(0.2),blurRadius: 125)
                              ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(child: SizedBox()),
                                Text("Sleeping hours",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.white),),
                                Text(sleep_time.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.w800,color: Colors.white),),
                                Expanded(child: SizedBox()),
                                FloatingActionButton(onPressed: (){
                                   setState(() {
                                     sleep_time++;
                                   });
                                },
                                backgroundColor: Colors.white,
                                 child: Icon(Feather.plus,color: Colors.black,size: 40,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            var database = Provider.of<AppDatabase>(context,listen: false);
                             if (int.parse(widget.mediTableData.sleep_time) > 0) {
                               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainScreen()));
                               Toast.show("You can add it Once", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM,backgroundColor: Colors.white,textColor: cool_green);
                             }else{
                               double result = double.parse(widget.mediTableData.Result) + getTSlp(double.parse(sleep_time.toString()));
                               print(result);
                               database.updateData(widget.mediTableData.copyWith(sleep_time:sleep_time > 8 ? "8" :sleep_time.toString(),Result:result.toString()));
                               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainScreen()));

                             }
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: cool_green,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            child: Center(child: Text("Complete",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          ),
    );
  }
}

