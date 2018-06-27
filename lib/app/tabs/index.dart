import 'package:flutter/material.dart';
import 'package:demo/test.dart';
class Index extends StatelessWidget {

  Widget titleSection = new Container(
    padding: const EdgeInsets.all(32.0),
    child: new Row(
      children: [
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Oeschinen Lake Campground',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Text(
                'Kandersteg, Switzerland',
                style: new TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        new Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        new Text('41'),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
  
    return new ListView(
      children: [
        new Image.network(
          'https://user-gold-cdn.xitu.io/2018/6/27/1643db02c369690e?imageView2/1/w/1304/h/734/q/85/format/webp/interlace/1',
          fit: BoxFit.cover,
        ),
        titleSection,
        new RaisedButton(
          child: new Text('go test'),
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new Test()),
            );
          },
        ),
      ],
    );
  } 
}