import 'package:flutter/material.dart';

import 'package:demo/app/tabs/index.dart';
import 'package:demo/app/tabs/brands.dart';
import 'package:demo/app/tabs/me.dart';

class TestApp extends StatefulWidget {

  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<TestApp> with SingleTickerProviderStateMixin {

 TabController controller;

 @override
 void initState() {
   super.initState();

   controller = new TabController(length: 3, vsync: this);
 } 

 @override
 void dispose() {
   controller.dispose();
   super.dispose();
 } 

 TabBar getTabBar() {
   return new TabBar(
     tabs: <Tab>[
       new Tab(
          icon: new Icon(Icons.favorite),
          text: '首页'
        ),
        new Tab(
          icon: new Icon(Icons.adb),
          text: '品牌'
        ),
        new Tab(
          icon: new Icon(Icons.favorite),
          text: '关于我'
        ),
     ],
     controller: controller,
   );
 }

 TabBarView getTabBarView(var tabs) {
   return new TabBarView(
     children: tabs,
     controller: controller,
   );
 } 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("flutter demo"),
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[new Index(), new Brands(), new Me()]),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: getTabBar()
      )
    );
  }
}