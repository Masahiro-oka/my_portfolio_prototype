import 'package:flame/sprite.dart';
import 'Move.dart';
import '../../components/move_charactor.dart';

class BlackBrain extends Move{
  BlackBrain(TopPage game, double x, double y) : super(game,x,y){
    movingSprite = List<Sprite>();
//    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine.gif'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-1（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-2（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-3（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-4（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-5（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-6（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-7（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-8（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-9（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-10（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-11（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-12（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-13（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-14（ドラッグされました）.png'));
    movingSprite.add(Sprite('Bloody Dairy Day 35_gifmagazine-15（ドラッグされました）.png'));
    deadSprite = Sprite('Bloody Dairy Day 35_gifmagazine.gif');
  }
}