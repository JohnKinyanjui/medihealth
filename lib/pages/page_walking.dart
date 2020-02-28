import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/components/mediHealth_brain.dart';
import 'package:medihealth/database/medi_data.dart';
import 'package:provider/provider.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';  // Import stop_watch_timer
import 'package:medihealth/components/progress_card_widget/circular.dart';
import 'package:medihealth/database/medi_database.dart';
import 'package:medihealth/security/landing_page.dart';

class PageWalking extends StatefulWidget {
  final MediTableData mediTableData;

  const PageWalking({Key key, this.mediTableData}) : super(key: key);
  @override
  _PageWalkingState createState() => _PageWalkingState();
}

class _PageWalkingState extends State<PageWalking> {
  static String new_minute;

  stop_watch wat = stop_watch.start;
  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() async {
    super.dispose();
    await _stopWatchTimer.dispose();  // Need to call dispose function.
  }
  final _stopWatchTimer = StopWatchTimer();
  

  String getWat(time){
    if (time == stop_watch.start) {
      return "Start";
    }else if (time == stop_watch.pause) {
      return "Resume";
    }else if (time == stop_watch.complete) {
      return "Complete";
    }
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: IconButton(icon: Icon(Feather.x,size: 30,color: cool_green,), onPressed: (){
                Navigator.of(context).pop();
              }),
            ),
            Center(child: Circular(percentage: getWlk(double.parse(widget.mediTableData.walking)).roundToDouble(), color: cool_green,radius: 200,)),

            StreamBuilder<int>(
              stream: _stopWatchTimer.rawTime,
              initialData: 0,
              builder: (context, snap) {
                final value = snap.data ;
                final minute = StopWatchTimer.getDisplayTimeMinute(value);
                final displayTime = StopWatchTimer.getDisplayTime(value);
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          displayTime,
                          style: TextStyle(
                            fontSize: 40,

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        minute,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color:  Colors.white
                        ),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onLongPress: (){
                          _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                          setState(() {
                            wat = stop_watch.pause;
                          });
                        },
                        onTap: (){
                          if(wat == stop_watch.start){
                            if (double.parse(widget.mediTableData.walking) == 0) {
                              _stopWatchTimer.onExecute.add(StopWatchExecute.start);
                              setState(() {
                                wat = stop_watch.complete;
                              });
                            }
                          }else if (wat == stop_watch.complete){
                            _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                            var database = Provider.of<AppDatabase>(context,listen: false);
                            double new_result = double.parse(widget.mediTableData.Result) +double.parse(minute);
                            database.updateData(widget.mediTableData.copyWith(walking: double.parse(minute) > 90? "90":minute ,Result: new_result.toStringAsFixed(0)));
                            print("Saved");
                          }else{
                            _stopWatchTimer.onExecute.add(StopWatchExecute.start);
                            setState(() {
                              wat = stop_watch.complete;
                            });
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: cool_green,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: Center(child: Text(getWat(wat),style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),)),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.only(left:20.0,top: 20,right: 20),
              child: Center(child: Text("Hold to pause.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),textAlign: TextAlign.center,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,top: 20,right: 20),
              child: Text("Walk for at least 1hr 30 min at a high speed to get the best results.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
  }
enum stop_watch {
  start,
  pause,
  complete
}



