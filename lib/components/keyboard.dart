import 'package:calc/components/button.dart';
import 'package:calc/components/button_row.dart';
import 'package:calc/components/display.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  const Keyboard(this.cb, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button.AC(text: 'AC', cb: cb),
              Button.PERCENT(text: '%', cb: cb),
              Button.operation(text: '/', cb: cb)
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(text: '7', cb: cb),
              Button(text: '8', cb: cb),
              Button(text: '9', cb: cb),
              Button.operation(text: 'x', cb: cb)
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(text: '4', cb: cb),
              Button(text: '5', cb: cb),
              Button(text: '6', cb: cb),
              Button.operation(text: '-', cb: cb)
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(text: '1', cb: cb),
              Button(text: '2', cb: cb),
              Button(text: '3', cb: cb),
              Button.operation(text: '+', cb: cb)
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button.big(text: '0', cb: cb),
              Button(text: '.', cb: cb),
              Button.operation(text: '=', cb: cb)
            ],
          )
        ],
      ),
    );
  }
}
