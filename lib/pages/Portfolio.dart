import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterweb/navigator_bar/navigation_bar/navigation_bar.dart';
import 'package:flutterweb/navigator_bar/drawer/navigation_drawer.dart';
import 'package:flutterweb/navigator_bar/navigation_bar/navigation_mobile_logo.dart';
//import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

//import '../components/CustomMouse.dart';
import '../components/RotationText.dart';
//import '../components/cnProviderPage.dart';

class HomePage extends StatefulWidget {
  @override
  Home createState() => Home();
}

class Home extends State<HomePage> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation<double> _turns;

  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    );
    _turns = _animationController.drive(
      CurveTween(
          curve: Curves.linear),
    ).drive(
      Tween<double>(begin: 0, end: 1),
    );
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
//    final hover = Provider.of<CustomMouseCursor>(context, listen: false);
    return
//      MouseRegion(
//        cursor: SystemMouseCursors.none,
//        onExit: (_){
//      print('ポインターが外れたよー');
//      hover.increment(null, null);
//    },
//    onHover: (event) {
//      hover.increment(event.position.dx, event.position.dy);
//    },
//    child:
    Stack(
      children: [
        Container(
          color: Colors.white,
          child: ResponsiveBuilder(
            builder: (context, sizingInformation) => Scaffold(
              drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? NavigationDrawer() : null,
              appBar: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? AppBar(
                iconTheme: new IconThemeData(color: Colors.deepPurpleAccent),
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  NavigationMobileLogo()
                ],
              ) : null,
              backgroundColor: Colors.transparent,
              body: Stack(
                fit: StackFit.expand,
                children: [
                  AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, widget) => Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Container(
                        margin:EdgeInsets.only(bottom: 550),
                        child: OverflowBox(
                          child: RotationTransition(
                            turns: _turns,
                            child: RotationText(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ResponsiveBuilder(builder: (context, sizingInformation) => (sizingInformation.deviceScreenType == DeviceScreenType.tablet || sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? NavigatorBar() : Container(width: 0,height: 0,)),
//        ResponsiveBuilder(builder: (context, sizingInformation) => (sizingInformation.deviceScreenType == DeviceScreenType.tablet || sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? CnProviderPage() : Container(width: 0,height: 0,)),
      ],
    );
//    );
  }
}
