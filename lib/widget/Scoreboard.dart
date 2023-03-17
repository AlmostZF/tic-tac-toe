import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScoreboardWidget extends StatelessWidget {
  int? xScore;
  int? yScore;
  ScoreboardWidget({super.key, required this.xScore, required this.yScore});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top:1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${AppLocalizations.of(context)!.player} O", style: customFontO),
              Text(
                '$xScore',
                style:
                    const TextStyle(fontSize: 55, fontWeight: FontWeight.w500, color: opositColors ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 1),
          child: Text(
            ':',
            style: TextStyle(
                fontSize: 46,
                height: 2,
                fontWeight: FontWeight.w500, color: secondColors),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${AppLocalizations.of(context)!.player} X", style: customFontX),
              Text(
                '$yScore',
                style:
                    const TextStyle(fontSize: 55, fontWeight: FontWeight.w500, color: lastColors),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
