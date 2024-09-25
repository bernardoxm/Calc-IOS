import 'package:calc/components/button.dart';
import 'package:flutter/widgets.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  ButtonRow({required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold<List<Widget>>([], (list, b) {
          if (list.isEmpty) {
            list.add(b);
          } else {
            list.addAll([const SizedBox(width: 1), b]); 
          }
          return list; 
        }),
      ),
    );
  }
}
