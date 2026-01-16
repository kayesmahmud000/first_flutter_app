import 'package:first_flutter_app/main.dart';
import 'package:first_flutter_app/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget{
   String result='';
  NextScreen(this.result);

  var values = RangeValues(0, 10);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Center(child: Text('Result page', style: TextStyle(fontSize: 30,fontWeight: .bold),)),
      backgroundColor: Colors.amber,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text('Welcome to the Result Page', style: TextStyle(fontSize: 20 ,fontWeight: .w400),)
          ,  
           Container(margin: EdgeInsets.only(top: 10),),

           Text('The Result is : $result'),
           Container(margin: EdgeInsets.only(top: 10),),
          SquareBtn(btnName: 'Previews ' , icon: Icon(Icons.arrow_left, color: Colors.white, size: 20,) ,bgColor: Colors.amber, textStyle: TextStyle(color: Colors.white),
          callback: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: "Flutter Demo",))),
          ),

          RangeSlider(values: values,
          min: 0,
          max: 10,
           onChanged: (newValue){
            values=newValue;
          })
        ],
      ),
    ),
   );
  }
}