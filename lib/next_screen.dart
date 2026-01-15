import 'package:first_flutter_app/main.dart';
import 'package:first_flutter_app/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Center(child: Text('Next page', style: TextStyle(fontSize: 30,fontWeight: .bold),)),
      backgroundColor: Colors.amber,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text('Welcome to the Next Page', style: TextStyle(fontSize: 20 ,fontWeight: .w400),)
          ,
          SquareBtn(btnName: 'Previews ' , icon: Icon(Icons.arrow_left) ,bgColor: Colors.blue, 
          callback: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: "Flutter Demo",))),
          )
        ],
      ),
    ),
   );
  }
}