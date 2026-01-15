import 'package:flutter/material.dart';

class SquareBtn extends StatelessWidget {
  final String btnName;
  final Color? bgColor;
  final Icon? icon;
  final VoidCallback? callback;
  final TextStyle? textStyle;

  SquareBtn({ required this.btnName, this.bgColor, this.icon, this.callback, this.textStyle});

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ElevatedButton(onPressed: (){
          callback!();
        },
        
         child: icon!=null? Row(
          mainAxisAlignment: .center,
          children: [
            icon!,
            Container(width: 11,),
            Text('$btnName', style: textStyle,)
          ],
        ): Text('$btnName', style: textStyle,),

        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          textStyle: textStyle,
          shape: BeveledRectangleBorder(
            borderRadius:.circular(2)
          )
          
        ),
        
        ),
      ),
    );
  }
}