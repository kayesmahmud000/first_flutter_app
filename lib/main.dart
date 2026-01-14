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
  

  @override
  Widget build(BuildContext context) {

    var arrNames =['Bil Gates','Bil Gates','Bil Gates','Bil Gates','Bil Gates','Bil Gates','Bil Gates',];

    return Scaffold(
      appBar: AppBar(
       
      
        title: Center(child: Text(widget.title , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.amber,
      ),

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
           backgroundImage: AssetImage ('assets/images/1.jpg'),
            backgroundColor: Colors.deepOrangeAccent,
            ),
            title: Text(arrNames[index], style:Theme.of(context).textTheme.headlineLarge,),
            subtitle: Text('Ceo' , style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.amber),),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: arrNames.length ,
        separatorBuilder: (context, index) => Divider(height: 50, thickness: 2,),
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