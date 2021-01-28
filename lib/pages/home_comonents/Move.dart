import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flame/sprite.dart';

import '../../components/move_charactor.dart';

class Move {
  final TopPage game;
  Rect moveRect;
//  Paint movePaint;
  bool isDead = false;
  bool isOff = false;
  List<Sprite> movingSprite;
  Sprite deadSprite;
  double movingSpriteIndex = 0;
  Offset targetLocation;

  double get speed => game.tileSize * 3;

  void setTargetLocation() {
    double x = game.rnd.nextDouble() * (game.screenSize.width - (game.tileSize * 2.025));
    double y = game.rnd.nextDouble() * (game.screenSize.height - (game.tileSize * 2.025));
    targetLocation = Offset(x, y);
  }

  Move(this.game, double x, double y){
    setTargetLocation();
    moveRect = Rect.fromLTWH(x, y, game.tileSize * 2, game.tileSize * 2);
//    movePaint = Paint();
//    movePaint.color = Colors.yellow;
  }
  void render(Canvas c) {
//    c.drawRect(moveRect, movePaint);
    if (isDead) {
//      inflateはtapするときのヒットを感知する範囲を決めている。今は１だが2にすると画像のヒットする範囲が増える
      deadSprite.renderRect(c, moveRect.inflate(2));
    } else {
      movingSprite[movingSpriteIndex.toInt()].renderRect(c, moveRect.inflate(2));
    }
  }

  void update(double t) {
    if(isDead){
      print(game.screenSize.width / 2);
      moveRect = moveRect.deflate(2);
//      moveRect = moveRect.deflate(2);
      print('${moveRect.size}らしいで');
        if(moveRect.width < 0){
          isOff = true;
        }
    } else {
      movingSpriteIndex += 20 * 0.0166;
      if (movingSpriteIndex >= 15) {
        movingSpriteIndex -= 15;
        print(movingSpriteIndex);
      }
    }

    double stepDistance = speed * t;
//    print(moveRect.size);
    Offset toTarget = targetLocation - Offset(moveRect.left, moveRect.top);
//    distanceは対象との距離という意味かな？
    if (stepDistance < toTarget.distance) {
      Offset stepToTarget = Offset.fromDirection(toTarget.direction, stepDistance);
      moveRect = moveRect.shift(stepToTarget);
    } else {
      moveRect = moveRect.shift(toTarget);
      setTargetLocation();
    }
  }

  void onTapDown() {
    isDead = true;
    game.randomAppear();
  }
}