import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class LayoutGameBottom extends StatelessWidget {
  String? element;
  LayoutGameBottom({super.key,this.element});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: secondColors),
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
