import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/navigator_bar/drawer/navigation_drawer.dart';
import 'package:flutterweb/navigator_bar/navigation_bar/navigation_mobile_logo.dart';
import 'package:flutterweb/pages/about_components/about_tab_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'about_components/about_mobile.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? NavigationDrawer() : null,
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? AppBar(
          iconTheme: new IconThemeData(color: Colors.blue),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            NavigationMobileLogo()
          ],
        ) : null,
        body: ScreenTypeLayout(
          tablet: AboutTabDeskTop(),
          mobile:  AboutMobile(),
        ),
      ),
    );
  }
}