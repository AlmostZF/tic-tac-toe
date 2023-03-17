import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widget/Scoreboard.dart';
import 'package:tic_tac_toe/constants/constants.dart';
import 'package:tic_tac_toe/controller/game_controller.dart';
import 'package:tic_tac_toe/widget/layoutBottom.dart';
import 'package:tic_tac_toe/widget/layoutRight.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widget/layoutGame.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        backgroundColor: firstColors,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: size.width * 1.3),
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ScoreboardWidget(
                      xScore: controller.playerOneScore,
                      yScore: controller.playerTwoScore)
                ],
              )),
            ),
            controller.stopInteraction == false
                ? Padding(
                    padding: EdgeInsets.only(
                        top: size.width * .5,
                        left: size.width * .04,
                        right: size.width * .02),
                    child: Column(children: [
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                controller.tapped(0);
                                setState(() {});
                              },
                              child: LayoutGame(
                                  element: controller.gameDisplay[0])),
                          GestureDetector(
                              onTap: () {
                                controller.tapped(1);
                                setState(() {});
                              },
                              child: LayoutGame(
                                  element: controller.gameDisplay[1])),
                          GestureDetector(
                              onTap: () {
                                controller.tapped(2);
                                setState(() {});
                              },
                              child: LayoutGameBottom(
                                  element: controller.gameDisplay[2])),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                controller.tapped(3);
                                setState(() {});
                              },
                              child: LayoutGame(
                                  element: controller.gameDisplay[3])),
                          GestureDetector(
                              onTap: () {
                                controller.tapped(4);
                                setState(() {});
                              },
                              child: LayoutGame(
                                  element: controller.gameDisplay[4])),
                          GestureDetector(
                              onTap: () {
                                controller.tapped(5);
                                setState(() {});
                              },
                              child: LayoutGameBottom(
                                  element: controller.gameDisplay[5])),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                controller.tapped(6);
                                setState(() {});
                              },
                              child: LayoutGameRight(
                                  element: controller.gameDisplay[6])),
                          GestureDetector(
                              onTap: () {
                                controller.tapped(7);
                                setState(() {});
                              },
                              child: LayoutGameRight(
                                  element: controller.gameDisplay[7])),
                          GestureDetector(
                            onTap: () {
                              controller.tapped(8);
                              setState(() {});
                            },
                            child: Container(
                              width: 110,
                              height: 110,
                              color: Colors.transparent,
                              child: Center(
                                child: controller.gameDisplay[8] == 'X'
                                    ? Text(
                                        controller.gameDisplay[8],
                                        style: customFontX,
                                      )
                                    : Text(
                                        controller.gameDisplay[8],
                                        style: customFontO,
                                      ),
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  )
                : Center(
                    child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: size.width * .8, bottom: size.width * .05),
                          child: controller.checkWinner() == 'draw'
                              ? Text(
                                  AppLocalizations.of(context)!.draw,
                                  style: customFontX,
                                )
                              : controller.checkWinner() == "X"
                                  ? Text(
                                      "${AppLocalizations.of(context)!.player} ${controller.checkWinner()} ${AppLocalizations.of(context)!.winner}",
                                      style: customFontX,
                                    )
                                  : Text(
                                      "${AppLocalizations.of(context)!.player} ${controller.checkWinner()} ${AppLocalizations.of(context)!.winner}",
                                      style: customFontO,
                                    )),
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: defaultColors),
                          onPressed: () {
                            controller.stopInteraction = false;
                            controller.clearBoard();
                            setState(() {});
                          },
                          child: controller.checkWinner() == "X"
                              ? Text(
                                  AppLocalizations.of(context)!.playAgain,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              : Text(
                                  AppLocalizations.of(context)!.playAgain,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ))
                    ],
                  ))
          ],
        ));
  }
}
