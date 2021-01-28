import 'package:flutter/material.dart';
import 'package:flutterweb/components/url_luncher.dart';
//import 'package:flutterweb/navigator_bar/navigation_bar.dart';

class ContactMobile extends StatelessWidget {

  UrlLunch _emailSend = new UrlLunch();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
//    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Material(
          child: Center(
            child: Text('Contact',
              style: TextStyle(
                  backgroundColor: Colors.transparent,
                  color: Colors.white70,
                  fontSize: 250,
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
//                      NavigatorBar(),
                  Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Card(
                        color: Colors.white.withOpacity(0.8),
                        elevation: 4.0,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              children: [
                                Text('お名前　　：'),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0,10,10,10),
                                    child: TextField(
                                      controller: _emailSend.emailController,
                                      decoration: InputDecoration(
                                        hintText: 'フルネームを入力してください。🖋',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              children: [
                                Text('問合せ内容：'),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0,10,10,10),
                                    child: TextField(
                                      keyboardType: TextInputType.multiline,
                                      maxLines: null,
                                      controller: _emailSend.textController,
                                      decoration: InputDecoration(
                                        hintText: 'お問合せ内容を入力してください。🖋',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Container(
                              width: width / 2,
                              height: 50,
                              child: RaisedButton(
                                  child: Text('メール送信'),
                                  onPressed: () =>_emailSend.emailLunch()
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
