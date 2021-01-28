import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMouseCursor extends ChangeNotifier {

  double x = 0;
  double y = 0;

  void increment(x,y){
    this.x = x;
    this.y = y;
    notifyListeners();
  }
}

