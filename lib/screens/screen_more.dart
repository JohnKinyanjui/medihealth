import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:medihealth/components/card_info.dart';
import 'package:medihealth/components/tab_bar.dart';
import 'package:medihealth/database/medi_data.dart';
import 'package:medihealth/database/medi_database.dart';
import 'package:medihealth/list/records_list_builder.dart';
import 'package:medihealth/security/landing_page.dart';
import 'package:medihealth/security/screen_user.dart';
import 'package:provider/provider.dart';

class ScreenMore extends StatefulWidget {
  @override
  _ScreenMoreState createState() => _ScreenMoreState();
}

class _ScreenMoreState extends State<ScreenMore> {
  more_option option_choosed = more_option.options;
  int index= 0;
  static var getRecords;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  PageController controller = PageController(initialPage: 0);
final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[200]),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(child: SizedBox()),
                              IconButton(icon: Icon(Feather.settings, size: 25,color: cool_green,), onPressed: (){

                              }),
                              IconButton(icon: Icon(Feather.info, size: 25,color: cool_green,), onPressed: (){

                              }),
                            ],
                          ),
                        ),
                      ),
                     Center(
                       child: Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Container(
                           height: 100,
                           width: 100,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(image: AssetImage('assets/images/medi_health.png'),fit: BoxFit.fill)
                           ),
                         ),
                       ),
                     ),
                     Center(child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("John",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w300),),
                     )),

                    Expanded(
                      child: Container(
                          child: _buildMediList(context)),
                    )
                    ],
                  ),
          ),
      ),
    );
  }
}

enum more_option{
  options,
  records
}

StreamBuilder<List<MediTableData>> _buildMediList(BuildContext context){
  final database = Provider.of<AppDatabase>(context);
  return StreamBuilder(
    stream: database.watchAllData(),
    builder: (context, AsyncSnapshot<List<MediTableData>> snapshot){
       final medi = snapshot.data ?? List();
       return Column(
         children: <Widget>[
           Text("My Records",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25,color: cool_green),),
           Expanded(
             child: Container(
               child: PageView.builder(
                 scrollDirection: Axis.horizontal,
                 controller: PageController(viewportFraction: 0.8),
                 itemCount: medi.length,
                   itemBuilder: (context,index){
                   if (snapshot.hasData) {
                     final medi_list = medi[index];
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: RecordsListBuilder(database,medi_list),
                     );
                   }
                   return Center(child: CircularProgressIndicator(strokeWidth: 1,));
               },),
             ),
           ),
         ],
       );
  },
  );
}


