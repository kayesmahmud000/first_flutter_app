import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
        textTheme:  TextTheme(
          headlineLarge: TextStyle(fontFamily: "MainFont", fontSize: 21, fontWeight:.bold),
        titleSmall:TextStyle( fontSize: 11, fontWeight:.w400 , fontStyle: .italic)
        )
      ),
      home: const MyHomePage(title: 'Flutter Demo '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
      var arrNames =['Bil Gates','Bil Gates','Bil Gates','Bil Gates','Bil Gates','Bil Gates','Bil Gates',];

    var emailText =TextEditingController();
    var passText = TextEditingController();
     bool isShow = false;
  

    var time = DateTime.now();

     void togglePassBtn(){
        setState(() {
          isShow = !isShow;
        });
        print(isShow);
     }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
       
      
        title: Center(child: Text(widget.title , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.amber,
      ),

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
             Center(child: Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              child: TextField(
                controller: emailText,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.amber,),
                  hintText: 'Enter Email',
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red
                  )
                 ),
               enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey

                )
               ),

               disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.amberAccent
                )
               )
                ),
                

            ))),
            Center(child: Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              child: TextField(
                controller: passText,
                obscureText: isShow,
                decoration: InputDecoration(
                   prefixIcon: Icon(Icons.lock, color: Colors.amber,),
                   suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye_sharp, color:Colors.amberAccent,),
                   onPressed:() => togglePassBtn(),
                   ),
                  hintText: 'Enter Password',

                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red
                  )
                 ),
               enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey
                )
               ),

               disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.amberAccent
                )
               )
                ),
                

            ))),
            
            Container(
              margin: EdgeInsets.only(top: 11),
              child: ElevatedButton(onPressed: (){
              String uEmail =emailText.text.toString();
              String uPass = passText.text;

              print('Email:$uEmail, Pass:$uPass');
              }, child: Text('Login'),  style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent,
              textStyle: TextStyle(fontSize: 21, fontWeight: .w400, color: Colors.white),
              shape: RoundedRectangleBorder(borderRadius:.zero),
             
              )),
            )   ,
            Text('Current Date ${DateFormat().format(time)}')  ,


            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(onPressed: () async{
              DateTime? datePicked = await showDatePicker(context: context, 
              initialDate: DateTime.now(),
               firstDate: DateTime(2000),
                lastDate: DateTime(3000));

                if(datePicked !=null){
                  print('${datePicked.toLocal()}');
                }

              }, child: Text('Pick Date'), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: .zero)
              ),),
            ),
            Text('Select Date') ,  
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(onPressed: () async{
              TimeOfDay? timePicked = await showTimePicker(context: context, initialTime: TimeOfDay.now());
              
                if(timePicked !=null){
                  print('${timePicked.hour}');
                }

              }, child: Text('Pick Time'), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: .zero)
              ),),
            ),
            Text('Select time')   
             
          ]
        ),
      )
    
    );
  }
}

TextStyle MyNewTextStyle({double size = 26.0}){
  return TextStyle(
    
    color: Colors.black54,
    fontSize: size


  );
}

// class NewWidget extends StatefulWidget {
//   const NewWidget({super.key});

//   @override
//   State<NewWidget> createState() => _NewWidgetState();
// }

// class _NewWidgetState extends State<NewWidget> {

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }