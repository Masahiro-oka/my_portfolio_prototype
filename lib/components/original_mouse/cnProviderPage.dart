import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterweb/components/original_mouse/CustomMouse.dart';
import 'package:provider/provider.dart';

class CnProviderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final hover = Provider.of<CustomMouseCursor>(context);
    return AnimatedPositioned(
      duration: Duration(milliseconds: 1),
      left: hover.x,
      top: hover.y,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.transparent,
        child: Text('☝︎',style: TextStyle(fontSize: 50,color: Colors.blueGrey),),
      ),
    );
  }
}