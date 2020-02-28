import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medihealth/components/bottom_navigation.dart';
import 'package:medihealth/components/custom_dialog.dart';
import 'package:medihealth/record/main_record.dart';
import 'package:medihealth/screens/home.dart';
import 'package:medihealth/screens/screen_more.dart';
import 'package:medihealth/screens/screen_records.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  float action_choosed = float.close;
  static screenss sce = screenss.home ;
  static int getPage(screens){
    if (screens == screenss.home) {
      return 0;
    }else if(screens == screenss.dash){
      return 1;
    }else if(screens == screenss.profile){
      return 2;
    }
  }

  PageController controller = PageController(initialPage: getPage(sce),keepPage: true);
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.light
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Center(
                  child: Transform.rotate(
                      angle: -14.18,
                      child: Text("Medi Health",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 120,color: Colors.grey[300].withOpacity(0.5)),)
                  ),
                )
              ],
            ),
            Positioned.fill(
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                onPageChanged: (new_index){
                  setState(() {
                    index = new_index;
                  });
                },
                children: <Widget>[
                  Home(),
                  ScreenRecords(),
                  ScreenMore()
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigation(onpress_1: (){
          setState(() {
            index = 0;
            controller.jumpToPage(index);
            sce =screenss.home;
          });
        }, onpress_2: (){
          setState(() {
            index = 1;
            controller.jumpToPage(index);
            sce = screenss.dash;
          });
        }, onpress_3: (){
          setState(() {
            index = 2;
            sce = screenss.profile;
            controller.jumpToPage(index);
          });
        }),
      floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.grey[50],
       elevation: 0.0,
       hoverElevation: 0.0,
       splashColor: Colors.white,
       focusElevation: 0.0,
       focusColor: Colors.white,
       onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainRecord())),
        child: Icon(action_choosed == float.close ?Feather.plus : Feather.x,color: Colors.black,size: 16,),),
      );
  }
}

enum float {
  open,
  close
}

enum screenss{
  home,
  dash,
  profile
}