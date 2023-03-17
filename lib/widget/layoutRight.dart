import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class LayoutGameRight extends StatelessWidget {
  String? element;
  LayoutGameRight({super.key,this.element});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          border: Border(
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
