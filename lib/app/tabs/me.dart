import 'package:flutter/material.dart';
class Me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("this is me")
          ],
        ),
      ),
    );
  } 
}