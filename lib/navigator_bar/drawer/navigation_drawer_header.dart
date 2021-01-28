import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Menu',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.grey
            ),
          ),
          Text('Tap Here',
          style: TextStyle(color: Colors.grey),),
        ],
      ),
    );
  }
}
