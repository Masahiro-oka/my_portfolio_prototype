import 'package:flutter/material.dart';
import 'package:flutterweb/pages/Portfolio.dart';

class NavigationMobileLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) => HomePage())),
      child: Container(width: 100, child: Center(child: Text('M.O',
          style: TextStyle(
            color: Colors.black54,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              shadows: <Shadow>[Shadow(offset: Offset(1, 2), color: Colors.blueGrey.shade500)],
              fontSize: 20
          )
      ),
      )),
    );
  }
}
