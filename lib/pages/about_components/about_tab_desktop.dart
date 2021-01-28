import 'package:flutter/material.dart';
import 'package:flutterweb/components/url_luncher.dart';
import 'package:flutterweb/navigator_bar/navigation_bar/navigation_bar.dart';

class AboutTabDeskTop extends StatelessWidget {

  UrlLunch _urlLunch = new UrlLunch();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomCenter,
          colors: [
//                const Color(0xff000FFF).withOpacity(0.3),
            const Color(0xff6392F6),
//                const Color(0xff6E7586),
            const Color(0xffFFFFFF).withOpacity(0.3),
          ],
        ),
      ),
      child: Stack(
        children: [
          Material(
            child: Center(
              child: Text('About',
                style: TextStyle(
                    backgroundColor: Colors.transparent,
                    color: Colors.white70,
                    fontSize: size.width / 3.4,
                    shadows: [Shadow(
                      color: Colors.grey,
                      offset: Offset(1, 2),
                      blurRadius: 0,
                    ),]
                ),),
            ),
          ),

          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NavigatorBar(),
                    SizedBox(
                      height: size.height * 0.2,
                    ),
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images/E45D861A-DD64-446A-B79B-4E81FA4F9583.png'),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Masahiro Oka',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: size.width * 0.03,
                                shadows: [Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  blurRadius: 0,
                                ),]
                            ),),
                          Text('岡　真大（26）',style: TextStyle(fontSize: size.width * 0.017,),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      '1日の大半を開発と読書に費やしています。\n主としてノンフィクションです。稀に小説読みます。\nスパイスカレー作りと散歩も時間の合間を見つけては…',
                      textAlign: TextAlign.center,
                      style: TextStyle(height: size.width * 0.001),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text('Skills',
                      style: TextStyle(
                          fontSize: size.width * 0.02,
                          shadows: [Shadow(
                            color: Colors.grey,
                            offset: Offset(1, 2),
                            blurRadius: 0,
                          ),]
                      ),),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text('ios/Android/Dart/Flutter/Firebase/PHP/Python\nmysql/VsCode/AndroidStudio/Terminal\nSlack/Chatwork/etc...'),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FlatButton.icon(
                          icon: SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.network('https://parottoblog.com/wp-content/uploads/2019/06/GitHub.png')),
                          label: Text('Github'),
                          onPressed:()=> _urlLunch.launchURL('https://github.com/Masahiro-oka'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
