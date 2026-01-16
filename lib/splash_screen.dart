import 'dart:async';

import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState()=> _SplashScreenState();

} 
class _SplashScreenState extends State<SplashScreen>{

@override
 void initState(){
  super.initState();
  Timer(Duration(seconds:2), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Flutter Damo'))));
 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    body: Container(
      color: Colors.amber,
      child: Center(child: Text('Flutter Demo', style: TextStyle(fontSize: 40, fontWeight: .bold, color: Colors.white, fontStyle:.italic), )),
    ),
   );
  }
}