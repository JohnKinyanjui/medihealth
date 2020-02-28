import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/database/medi_data.dart';
import 'package:medihealth/database/medi_database.dart';
import 'package:medihealth/database/medi_model.dart';
import 'package:medihealth/record/reco_1.dart';
import 'package:medihealth/screens/main_screen.dart';
import 'package:medihealth/screens/screen_add/screen_add.dart';
import 'package:medihealth/screens/screen_add/screen_add_des.dart';
import 'package:medihealth/security/landing_page.dart';
import 'package:provider/provider.dart';


class MainRecord extends StatefulWidget {
  @override
  _MainRecordState createState() => _MainRecordState();
}

class _MainRecordState extends State<MainRecord> {
  double value_1 = 10;

  int page_index = 0;
  PageController controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_)=>AppDatabase(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[50],
          body: PageView(
            controller: controller,
            scrollDirection: Axis.vertical,
            onPageChanged: (new_index){
              setState(() {
                page_index = new_index;
              });
            },
            children: <Widget>[
              ScreenAdd(),
              ScreenRead()
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                if (page_index == 0) {
                  controller.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.easeOutBack);
                  print("$date,$day,$mood,$sleep,$health");
                }else{
                  final database = Provider.of<AppDatabase>(context,listen: false);
                  double quiz_percentage = qiuzpercentage(mood, sleep, health);
                  double total = quiz_percentage + double.parse(walking) +double.parse(water) + double.parse(sleep_time) + double.parse(calories);
                  final task = MediTableData(
                      date: date,
                      day: day,
                      mood: mood,
                      sleep: sleep,
                      healthy: health,
                      quiz_percentage:quiz_percentage.toString(),
                      des: des,
                      walking: walking,
                      water: water,
                      sleep_time: sleep_time,
                      calories: calories,
                      Result: total.toString());
                       print("hello");

                      database.insertData(task);

                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainScreen()));
                }


              },
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: cool_green,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(0.5),blurRadius: 10)
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(page_index == 0 ? "Next" :"Complete",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
