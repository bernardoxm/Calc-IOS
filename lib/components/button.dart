import 'package:flutter/material.dart';

class Button extends StatelessWidget {

   static const DARK = Color.fromARGB(82, 82, 82, 1);
   static const DEFAULT = Color.fromARGB(255, 74, 74, 74);
   static const OPERATION = Color.fromARGB(255, 209, 89, 4);
    final void Function(String) cb;

   final bool big;
    final String text;
    final Color color;
   
   
    Button.PERCENT({required this.text,  this.big = false, this.color = const Color.fromARGB(84, 76, 76, 76), required this.cb});
    Button({required this.text,  this.big = false, this.color = DEFAULT ,required this.cb});
    Button.big({required this.text,  this.big = true, this.color = DEFAULT, required this.cb});
    Button.operation({required this.text,  this.big = false, this.color = OPERATION, required this.cb});
    Button.AC({required this.text,  this.big = true, this.color = const Color.fromARGB(84, 76, 76, 76), required this.cb});
  
  
  @override 
  Widget build(BuildContext context) {
      return Expanded( flex: big ? 2 : 1 ,child: ElevatedButton( 
        
        style: ElevatedButton.styleFrom( backgroundColor: color,foregroundColor: Colors.white,
          textStyle: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200 ) ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          
        ),
        ),
        
        onPressed: ()=> cb(text), child: Text(text),));

  }
 }