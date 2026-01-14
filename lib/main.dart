import 'package:flutter/material.dart';

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
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       
      
        title: Center(child: Text(widget.title , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.amber,
      ),

      body:Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:SingleChildScrollView (
            child: Column(
              children: [
                Center( 
                  
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
                Center( 
                  child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)), color:Colors.amberAccent ),
                  ),
                ),
              ],
            ),
          ),
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