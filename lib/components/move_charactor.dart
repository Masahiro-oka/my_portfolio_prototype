import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/home_comonents/Move.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import '../pages/home_comonents/BlackBrain.dart';
import '../pages/home_comonents/backyard.dart';


class TopPage extends Game {
  Size screenSize;
  double tileSize;
  Backyard backyard;
  List<Move> moving;
  Random rnd;
  BuildContext context;

  TopPage(){
    initialize();
  }

  void initialize() async {
    print('initialize　初期化を行っています');
//    List関数を代入
    moving = List<Move>();
    rnd = Random();
//    initialDimensionsの日本語は初期寸法。
    resize(await Flame.util.initialDimensions());

    backyard = Backyard(this);
    randomAppear();
  }

  void randomAppear(){
    double x = rnd.nextDouble() * (screenSize.width - tileSize);
    double y = rnd.nextDouble() * (screenSize.height - tileSize);
    moving.add(BlackBrain(this, x, y));
    print(moving.length);
  }


  void render(Canvas canvas){
    backyard.render(canvas);
    moving.forEach((Move move) {
      move.render(canvas);
    });
  }

  void update(double t){
    moving.forEach((Move move) {
      move.update(t);
    });
    moving.removeWhere((Move move){
      return move.isOff;
    });
  }


  void resize(Size size){
    screenSize = size;
    tileSize = screenSize.width / 9;
  }

  void onTapDown(TapDownDetails d){
    moving.forEach((Move move) {
      if(move.moveRect.contains(d.globalPosition)){
        move.onTapDown();
      }
    });
  }
}