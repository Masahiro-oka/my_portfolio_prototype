import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flame/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Portfolio.dart';
import '../components/move_charactor.dart';


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TopPage topPage = new TopPage();
  Image book = Image.asset('assets/images/book-1（ドラッグされました）.png');
  int changeNum;
  Animation<double> animation;
  bool bodyChange = false;
  double opacity = 1.0;


  Image bookImage(){
    book = Image.asset('assets/images/book.gif');
    return book;
  }

  @override
  void initState() {
    super.initState();
    Util flameUtil = Util();
    TapGestureRecognizer tapper = TapGestureRecognizer();
    tapper.onTapDown = topPage.onTapDown;
    // ignore: deprecated_member_use
    flameUtil.addGestureRecognizer(tapper);
    changeNum = 1;
  }

  SizedBox welcomeTitle(){
    String welcomeString;
      welcomeString = 'Please turn pages\n　　　☟';
      return SizedBox(
        child: TypewriterAnimatedTextKit(
          text: [
            welcomeString
          ],
          textStyle: TextStyle(
              color: Colors.white30,
              fontSize: 40,
              shadows: [Shadow(
                color: Colors.grey,
                offset: Offset(1, 2),
                blurRadius: 0,
              ),]
          ),
          isRepeatingAnimation: false,
          repeatForever: false,
          totalRepeatCount: 1,
          speed: Duration(milliseconds: 100),
          textAlign: TextAlign.start,),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black
      ),
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 1800),
        opacity: bodyChange ? opacity = 0.0 : opacity = 1.0,
        child: Stack(
          children: [
            Scaffold(
                body: Container(
                    child: Stack(
                      children: [
                        topPage.widget,
                        Container(
                          child: Center(
                              child: welcomeTitle()
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 200),
                            child: GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    bookImage();
                                  });
                                  await new Future.delayed(new Duration(milliseconds: 1800));
                                  setState(() {
                                    bodyChange = true;
                                  });
                                  await new Future.delayed(new Duration(milliseconds: 4000));
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (context){
                                      return HomePage();
                                    }
                                ));
                                },
                                child: Center(
                                  child: book,)
                            )
                        ),
                      ],
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}
