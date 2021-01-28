import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/pages/Portfolio.dart';
import 'package:flutterweb/pages/about.dart';
import 'package:flutterweb/pages/contact.dart';
import 'package:flutterweb/pages/projects.dart';

class SideDrawer extends StatefulWidget {
  @override
  SideDrawerState createState() => SideDrawerState();
}

class SideDrawerState extends State<SideDrawer>{

  List<Widget> _pageList = [HomePage(),About(),Projects(),Contact()];

  Widget listTile(int i){
    Text title;
    Text subTitle;
    Icon icon;
    switch(i){
      case 0:
        title = Text('HOME');
        subTitle =  Text('ホーム');
        icon = Icon(Icons.home);
        break;
      case 1:
        title = Text('About');
        subTitle =  Text('岡について');
        icon = Icon(Icons.person);
        break;
      case 2:
        title = Text('Projects');
        subTitle =  Text('作ってきたもの');
        icon = Icon(Icons.apps);

        break;
      case 3:
        title = Text('Contact');
        subTitle =  Text('連絡先');
        icon = Icon(Icons.mail);
        break;
    }
    Widget pageTile = ListTile(

      subtitle: subTitle,
      leading: icon,
      title: title,
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => _pageList[i]
        ));
      },
    );
    return pageTile;
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.height / 2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
          colors: [
            const Color(0xff001965).withOpacity(0.7),
            const Color(0xff000000),
          ],
        ),
      ),
      child: ListView(
        children: [
          listTile(0),
          listTile(1),
          listTile(2),
          listTile(3)
        ],
      ),
    );
  }
}
