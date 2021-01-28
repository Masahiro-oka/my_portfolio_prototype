import 'package:flutter/material.dart';
import 'package:flutterweb/navigator_bar/drawer/drawer_item.dart';
import 'package:flutterweb/navigator_bar/drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12,blurRadius: 16)
          ]
        ),
        child: Column(
          children: [
            NavigationDrawerHeader(),
            DrawerItem('Home', Icons.home,0),
            DrawerItem('about', Icons.person,1),
            DrawerItem('Projects', Icons.apps,2),
            DrawerItem('Contact', Icons.mail,3),
          ],
        ),
      ),
    );
  }
}
