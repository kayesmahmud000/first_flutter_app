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

    var arrNames =['John', 'Bil Gats', 'Donal Tramp', 'Elon Mask', 'Bear Gayles', 'Ambani'];
    return Scaffold(
      appBar: AppBar(
       
      
        title: Center(child: Text(widget.title , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.amber,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder( itemBuilder: (context, index) => Text(arrNames[index], style: TextStyle(fontSize: 20, fontWeight: .bold),
        ),
         itemCount:arrNames.length,
         itemExtent: 300,
    
        
        ),
      ),
      // body:Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
                       
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
                       
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
                       
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
                       
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
                       
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
                       
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
                       
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
                       
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
               
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
              
      //           height: 200,
      //           color: Colors.amberAccent,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),

      //           height: 200,
      //           color: Colors.indigo,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
              
      //           height: 200,
      //           color: Colors.blueGrey,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
               
      //           height: 200,
      //           color: Colors.green,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
               
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
              
      //           height: 200,
      //           color: Colors.amberAccent,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),

      //           height: 200,
      //           color: Colors.indigo,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
              
      //           height: 200,
      //           color: Colors.blueGrey,
      //         )
      //       ],
      //     ),
      //   ),
      // ) 
      // Center(
      //   child: InkWell(
      //     onTap: () => print("tapped on single") ,
      //     onDoubleTap: () => print('tapped on double'),
      //     child: Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.amber,
      //       child: Center(child: Text('Click Hare', style: TextStyle(fontSize: 12,
      //       fontWeight: .bold),)),
      //     ),
      //   ),
      // )
      // Container(
      //   child: Column(
      //     mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [ Text('A'),
      //       Text('A'),
      //       Text('A'),
      //       Text('A')],
      //       ),
           
      //       Text('A'),
      //       Text('A'),
      //       Text('A'),
      //       Text('A'),
        
      //        Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         crossAxisAlignment: CrossAxisAlignment.end,
      //       children: [ 
      //         Text('A'),
      //       Text('A'),
      //       Text('A'),
      //       Text('A')],
      //       ),
      //     ],
      //   ),
      // )
      // Center(
      //   child: Container(
      //   width: 200,
      //   height: 100,
      //   color: Colors.amber,
      //   child: Image.asset('assets/images/laptop.jpg'),
      //   // child: OutlinedButton(
      //   //   onPressed:(){ print('Clicked');} ,
      //   //     style:ElevatedButton.styleFrom(
      //   //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
      //   //     ),
      //   //   child:  Text('Click Hare', style: MyNewTextStyle(),) ,
      
      //   // ),
      //   // child: Center(child: Text('Demo', style: TextStyle(fontSize: 30 ),)),
        
      // ) ,
      // )
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