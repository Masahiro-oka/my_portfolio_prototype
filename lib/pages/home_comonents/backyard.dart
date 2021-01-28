import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:flutterweb/components/move_charactor.dart';

class Backyard{
  final TopPage game;
  Sprite bgSprite;
  Rect bgRect;

  Backyard (this.game){
    bgSprite = Sprite('random_TVnoise_2.gif');
    bgRect = Rect.fromLTWH(
        0,
        game.screenSize.height - (game.tileSize * 5),
        game.tileSize* 9,
        game.tileSize* 5
    );
  }

  void render(Canvas canvas){
    bgSprite.renderRect(canvas, bgRect);
  }

  void update(double t){}
}
