import 'dart:html';

import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'components/original_mouse/CustomMouse.dart';
import 'pages/home.dart';
import 'package:flame/flame.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  Flame.images.loadAll(<String>[
    'Bloody Dairy Day 35_gifmagazine.gif',
    'Bloody Dairy Day 35_gifmagazine-1（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-2（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-3（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-4（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-5（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-6（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-7（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-8（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-9（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-10（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-11（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-12（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-13（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-14（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-15（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-1（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-2（ドラッグされました）.png',
    'Bloody Dairy Day 35_gifmagazine-3（ドラッグされました）.png',
    'book.gif',
    'book-1（ドラッグされました）.png',
    'random_TVnoise_2.gif',
    'E45D861A-DD64-446A-B79B-4E81FA4F9583.png',
    'image0.png',
    'ネズミたたきアイコン.png',
  ]);

  print("loding...");
  Future.delayed(Duration(seconds: 2), () {
//    querySelector("#loader").remove();
    runApp(new MyApp(),);
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CustomMouseCursor(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'M.O Portfolio',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        ),
    );
  }
}

