import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';
import 'package:tic_tac_toe/controller/game_controller.dart';

class LayoutGame extends StatelessWidget {
  String? element;
  LayoutGame({super.key, required this.element});
  @override
  Widget build(BuildContext context) {
    Controller controller = Controller();
    return Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: secondColors),
            right: BorderSide(color: secondColors),
          ),
        ),
        child: Center(
          child: element == 'X' ?Text( 
            '$element',
            style: customFontX,
          )
          :Text( 
            '$element',
            style: customFontO,
          )
        ));
  }
}
