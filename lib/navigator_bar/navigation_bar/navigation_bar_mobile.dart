import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            child: IconButton(
              icon: Icon(Icons.help),
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (_){
                    return AlertDialog(
                        content: Text("左側をスライドしてください"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("OK"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ]
                    );
                  },
                );
              },
            ),
          ),
          Material(child: Text('Masahiro\nOka',style: TextStyle(backgroundColor: Colors.transparent),)),
        ],
      ),
    );
  }
}
