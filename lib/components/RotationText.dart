import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';

class RotationText extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ArcText(
      radius: size.width * 0.3,
      text: ' 𝕎𝕖𝕝𝕔𝕠𝕞𝕖 𝕥𝕠 𝕥𝕙𝕖 𝕡𝕒𝕘𝕖𝕤 𝕠𝕗      "𐊰ᥲ⳽ᥲһᎥ𐑾૦ ᱛ𐊋ᥲ"',
        textStyle: TextStyle(
            fontSize: size.width * 0.08,
            color: Color(0xff0C1AE8).withOpacity(0.3),
            shadows: [Shadow(
          color: Color(0xffEBECFD),
          offset: Offset(0, 3),
          blurRadius: 0,
        ),]),
        startAngle: 3.14 / 2,
        startAngleAlignment: StartAngleAlignment.start,
        placement: Placement.outside,
        direction: Direction.counterClockwise,
    );
  }
}