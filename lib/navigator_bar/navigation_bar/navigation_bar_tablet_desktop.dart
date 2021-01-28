import 'package:flutter/material.dart';
import 'package:flutterweb/pages/Portfolio.dart';
import 'package:flutterweb/pages/about.dart';
import 'package:flutterweb/pages/contact.dart';
import 'package:flutterweb/pages/projects.dart';

import 'navbar_item.dart';

class NavigationBarTabletDeskTop extends StatelessWidget {

  List<Widget> _pageList = [HomePage(),About(),Projects(),Contact()];
  List<String> _textList = ['Home','About','Projects','Contact'];

  List<Widget> navigatorItem(context){

    List<Widget> navItem = [];

    for(int i = 0; i < _pageList.length; i++){
      navItem.add(
          Row(
            children: [
              GestureDetector(
                child: NavBarItem(_textList[i]),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context) => _pageList[i]));
                  },),
          SizedBox(
            width: 60,
          ),
        ],
      ));
    }
    return navItem;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        color: Colors.transparent,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) => _pageList[0])),
              child: Container(width: 100, child: Center(child: Text('M.O',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      shadows: <Shadow>[Shadow(offset: Offset(1, 2), color: Colors.blueGrey.shade500)],
                      fontSize: 20
                  )
              ),
              )),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: navigatorItem(context)
            ),
          ],
        ),
      ),
    );
  }
}
