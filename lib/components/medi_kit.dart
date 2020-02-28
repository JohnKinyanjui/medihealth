import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MediKit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1498462440456-0dba182e775b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child:  Container(
                  decoration: BoxDecoration(
                      backgroundBlendMode: BlendMode.color,
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Feather.droplet,color: Colors.white,size: 25,),
                          ),
                          Text("Water",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),)
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(left :8.0,bottom: 2),
                        child: Text("1.2K",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left :8.0,bottom: 8),
                        child: Text("Litres",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.grey[100]),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:  BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1516826435551-36a8a09e4526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),fit: BoxFit.cover)
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            backgroundBlendMode: BlendMode.color,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Feather.watch,color: Colors.white,),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Prescription Reminder",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),),
                                  ),
                                )
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.only(left :8.0,bottom: 2),
                              child: Text("0",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left :8.0,bottom: 8),
                              child: Text("Current no of prescriptions",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1522844990619-4951c40f7eda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            backgroundBlendMode: BlendMode.color,
                            color: Colors.brown[900],
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Feather.zap,color: Colors.white,size: 25,),
                                ),
                                Text("BMI calculator",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),)
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            Padding(
                              padding: const EdgeInsets.only(left :8.0,bottom: 2),
                              child: Text("80 Kg",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left :8.0,bottom: 8),
                              child: Text("Current BMI",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.grey[100]),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
