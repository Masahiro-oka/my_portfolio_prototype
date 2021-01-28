import 'package:flutter/material.dart';
import 'package:flutterweb/navigator_bar/navigation_bar/navbar_item.dart';
import 'package:flutterweb/pages/Portfolio.dart';
import 'package:flutterweb/pages/about.dart';
import 'package:flutterweb/pages/contact.dart';
import 'package:flutterweb/pages/projects.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem(this.title,this.icon,this.pageNum);

  final String title;
  final IconData icon;
  final int pageNum;

  List<Widget> _pageList = [HomePage(),About(),Projects(),Contact()];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: GestureDetector(
        onTap: (){
          switch(pageNum){
            case 0:
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => _pageList[0]
              ));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => _pageList[1]
              ));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => _pageList[2]
              ));

              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => _pageList[3]
              ));
              break;
          }
        },
        child: Row(
          children: [
            Icon(icon)        ,
            SizedBox(width: 30,),
            NavBarItem(title)
          ],
        ),
      ),
    );
  }
}
