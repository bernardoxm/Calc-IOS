import 'dart:ui';

import 'package:calc/components/keyboard.dart';
import 'package:calc/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/display.dart';

class Calculator extends StatefulWidget {

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();
  
  
  _onPressed(String text ){setState(() {
    memory.applyCommand(text);
  });}

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // TODO: implement build
    return MaterialApp(
      home: Column(
        children: [Display(memory.value), Keyboard(_onPressed,),],
      ),
    );
  }
}
