import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/constants.dart';

class Controller {
  VoidCallback? call;
  int playerOneScore = 0;
  int playerTwoScore = 0;
  String element = 'X';
  int boxFilled = 0;
  bool stopInteraction = false;
  List<String> gameDisplay = ['', '', '', '', '', '', '', '', ''];

  checkWinner() {
    if (gameDisplay[0] == gameDisplay[1] &&
        gameDisplay[0] == gameDisplay[2] &&
        gameDisplay[0] != '') {
      return gameDisplay[0];
    }

    if (gameDisplay[3] == gameDisplay[4] &&
        gameDisplay[3] == gameDisplay[5] &&
        gameDisplay[3] != '') {
      return gameDisplay[3];
    }

    if (gameDisplay[6] == gameDisplay[7] &&
        gameDisplay[6] == gameDisplay[8] &&
        gameDisplay[6] != '') {
      return gameDisplay[6];
    }

    if (gameDisplay[0] == gameDisplay[3] &&
        gameDisplay[0] == gameDisplay[6] &&
        gameDisplay[0] != '') {
      return gameDisplay[0];
    }

    if (gameDisplay[1] == gameDisplay[4] &&
        gameDisplay[1] == gameDisplay[7] &&
        gameDisplay[1] != '') {
      return gameDisplay[1];
    }

    if (gameDisplay[2] == gameDisplay[5] &&
        gameDisplay[2] == gameDisplay[8] &&
        gameDisplay[2] != '') {
      return gameDisplay[2];
    }

    if (gameDisplay[6] == gameDisplay[4] &&
        gameDisplay[6] == gameDisplay[2] &&
        gameDisplay[6] != '') {
      return gameDisplay[6];
    }

    if (gameDisplay[0] == gameDisplay[4] &&
        gameDisplay[0] == gameDisplay[8] &&
        gameDisplay[0] != '') {
      return gameDisplay[0];
    }

    if (boxFilled == 9) {
      return 'draw';
    }
  }

  void clearBoard() {
    call?.call();
    for (int i = 0; i < 9; i++) {
      gameDisplay[i] = '';
    }
    boxFilled = 0;
  }

  void tapped(int index) {
    if (gameDisplay[index] != '') return;
    gameDisplay[index] = element;
    if (element == 'X') {
      element = 'O';
      boxFilled += 1;
      print(element);
    } else {
      element = 'X';
      boxFilled += 1;
      print(element);
    }
    if (checkWinner() == 'X') {
      playerTwoScore += 1;
      print('x sdsd');
      stopInteraction = true;
    } else if (checkWinner() == 'O') {
      playerOneScore += 1;
      stopInteraction = true;
      print('O sdsd');
    } else if (checkWinner() == 'draw') {
      stopInteraction = true;
    }
    call?.call();
  }
}
