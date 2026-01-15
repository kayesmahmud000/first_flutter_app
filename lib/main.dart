import 'package:flutter/gestures.dart';
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
      scrollBehavior: CustomScrollBehavior(),
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

   var arrNames =['Bil Gates','Bil Gates','Bil Gates','Bil Gates','Bil Gates','Bil Gates','Bil Gates',];

class _MyHomePageState extends State<MyHomePage> {
   
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
      body: Column(
        children: [
          TopSection(), 
          ListSection(),
          ThirdSection(), 
          FooterSection(), 
          ],
      ),
     
    
    );
  }
}


class CustomScrollBehavior extends MaterialScrollBehavior{
  @override
  Set<PointerDeviceKind> get dragDevices =>{
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

class TopSection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        
        itemCount: 10,
        itemBuilder:(context ,index)=>Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 100,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.green,
          ),
        ),
      )),
    );
  }
}

class ListSection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  
    return Expanded(
      flex: 5,
      child: 
    Container(
      color: Colors.amber,
      child: ListView.builder(
        itemCount: arrNames.length,
        itemBuilder: (context, index)=> ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.green,
        ),
        title: Text(arrNames[index], style:Theme.of(context).textTheme.headlineLarge,),
        subtitle: Text('Ceo'),
        trailing: Icon(Icons.delete),
      )),
      
    ));
  }
}

class ThirdSection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  
    return Expanded(
      flex: 2,
      child: 
    Container(
      color: Colors.purpleAccent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container
        ( width: 200,
        height: 100,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.blue
        ),),
      ),),
      
    ));
  }
}
class FooterSection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  
    return Expanded(
      flex: 2,
      child: 
    Container(
      color: Colors.indigoAccent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(crossAxisCount: 4,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        children: [
          Container(
         
            color: Colors.red,
          ),
          Container(
           
            color: Colors.red,
          ),
          Container(
           
            color: Colors.red,
          ),
          Container(
          
            color: Colors.red,
          ),
        ],
        ),
      ),
    ));
  }
}
