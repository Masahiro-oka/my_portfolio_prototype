import 'package:flutter/material.dart';
import 'package:flutterweb/components/url_luncher.dart';
import 'package:flutterweb/navigator_bar/navigation_bar/navigation_bar.dart';

class ProjectsTabletDeskTop extends StatelessWidget {

  UrlLunch _urlLunch = new UrlLunch();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Material(
          child: Center(
            child: Text('Projects',
              style: TextStyle(
                  backgroundColor: Colors.transparent,
                  color: Colors.white70,
                  fontSize: width / 3.4,
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
                  children: [
                    NavigatorBar(),
                    Container(
                      width: width * 0.35,
                      height: height * 0.35,
                      child: Card(
                        shadowColor: Colors.blueGrey,
                        elevation: 5.0,
                        color: Colors.white.withOpacity(0.8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/image0.png',
                                  width: width * 0.15,
                                  height: height * 0.2,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Weather Calendar',
                                        style: TextStyle(
                                            fontSize: width * 0.02,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                      Text('予定を立てながら他のアプリで天気を見る…\nそんな煩わしいこともうやめませんか？',
                                        style: TextStyle(
                                          fontSize: width * 0.01,
                                          height: height * 0.002,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () => _urlLunch.launchURL('https://apps.apple.com/us/app/weather-calendar/id1523003409'),
                                  child: Image.network('https://www.maple-pharmacy.co.jp/images/appstore.png',
                                    width: width * 0.15,
                                    height: height * 0.1,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => _urlLunch.launchURL('https://play.google.com/store/apps/details?id=net.masahiro.weathercalendar'),
                                  child: Image.network('https://play.google.com/intl/ja/badges/static/images/badges/ja_badge_web_generic.png',
                                    width: width * 0.15,
                                    height: height * 0.1,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.35,
                      height: height * 0.35,
                      child: Card(
                        shadowColor: Colors.blueGrey,
                        elevation: 5.0,
                        color: Colors.white.withOpacity(0.8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/ネズミたたきアイコン.png',
                                  width: width * 0.15,
                                  height: height * 0.2,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('ネズミたたき',
                                        style: TextStyle(
                                            fontSize: width * 0.02,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                      Text('ネズミが大量発生している！今すぐ倒しに行こう！',
                                        style: TextStyle(
                                          fontSize: width * 0.01,
                                          height: height * 0.002,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () => _urlLunch.launchURL('https://apps.apple.com/us/app/%E3%83%8D%E3%82%BA%E3%83%9F%E3%81%9F%E3%81%9F%E3%81%8D/id1525720012'),
                                  child: Image.network('https://www.maple-pharmacy.co.jp/images/appstore.png',
                                    width: width * 0.15,
                                    height: height * 0.1,
                                  ),
                                ),
                                Image.network('https://play.google.com/intl/ja/badges/static/images/badges/ja_badge_web_generic.png',
                                  width: width * 0.15,
                                  height: height * 0.1,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
      ],
    );;
  }
}
