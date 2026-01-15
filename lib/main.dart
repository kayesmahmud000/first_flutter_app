import 'package:first_flutter_app/next_screen.dart';
import 'package:first_flutter_app/widgets/custom_btn.dart';
import 'package:flutter/cupertino.dart';
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
   
    final num1 =TextEditingController();
    final num2 = TextEditingController();
     bool isShow = false;
     
     var result ='';
  

    var time = DateTime.now();

    void addNum (){
    var number1 = int.parse(num1.text.toString());
    var number2 = int.parse(num2.text.toString());

    var sum = number1+ number2;
  
    setState(() {
        result = "The sum of  $number1 and $number2 is $sum" ;
    });
    }
    void subNum (){
    var number1 = int.parse(num1.text.toString());
    var number2 = int.parse(num2.text.toString());

    var sub = number1-number2;


    setState(() {
        result = "The Sub of  $number1 and $number2 is $sub" ;
    });
    }
    void multiNum (){
    var number1 = int.parse(num1.text.toString());
    var number2 = int.parse(num2.text.toString());

    var multi = number1* number2;


  

    setState(() {
        result = "The sum of  $number1 and $number2 is $multi" ;
    });
    }
    void divNum (){
    var number1 = int.parse(num1.text.toString());
    var number2 = int.parse(num2.text.toString());

    var div = number1/number2;

    print('$number2 $div $number1');

  

    setState(() {
        result = "The div of  $number1 and $number2 is $div" ;
    });
    }
    
    
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
      body: Center(child: Container(
        color: Colors.blueGrey.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: num1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.green)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide( color: Colors.black))
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: num2,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    )
                  ),
                
                ),
              ),
              
              Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  Container(
                 
                    child: SquareBtn( btnName: 'Add', textStyle: TextStyle(fontSize: 10, fontWeight: .w200, color: Colors.white), icon: Icon(Icons.add, color: Colors.white,), bgColor: Colors.blue, callback: ()=>addNum(),)),
                 Container(
             
                child: SquareBtn( btnName: 'Sub', textStyle: TextStyle(fontSize: 10, fontWeight: .w200, color: Colors.white), icon: Icon(Icons.remove, color: Colors.white,), bgColor: Colors.red, callback: ()=>subNum())),
                Container(
             
                child: SquareBtn( btnName: 'Multi', textStyle: TextStyle(fontSize: 10, fontWeight: .w200, color: Colors.white), icon: Icon(Icons.close, color: Colors.white,), bgColor: Colors.green, callback: ()=>multiNum())),
                Container(
             
                child: SquareBtn( btnName: 'Div', textStyle: TextStyle(fontSize: 10, fontWeight: .w200, color: Colors.white), icon: Icon(CupertinoIcons.divide, color: Colors.white,), bgColor: Colors.orange, callback: ()=>divNum(),)),
                ],
              ),
        
              Text('The Result is : $result'),
              
              Container(
                child: SquareBtn(btnName: "Next ",
                icon: Icon(Icons.arrow_right)
                , bgColor: Colors.blue,
                callback: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>NextScreen())),
                ),
              )
            ],
          ),
        ),
      )),
      // body: Column(
      //   children: [
      //     TopSection(), 
      //     ListSection(),
      //     ThirdSection(), 
      //     FooterSection(), 
      //     ],
      // ),
     
    
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
