import 'package:flutter/material.dart';
import 'package:demo/app/model/list_model.dart';
import 'package:demo/app/list/list_item.dart';
import 'package:demo/app/list/list.dart';

class Test extends StatelessWidget {
   
   List<ListModel> models = [
      const ListModel(
          name: 'zhangsan', email: 'dddddd@jd.com'),
      const ListModel(
          name: 'list', email: 'dddddd@jd.com'),
      const ListModel(
          name: 'zhangsan', email: 'dddddd@jd.com'),
      const ListModel(
          name: 'zhangsan', email: 'dddddd@jd.com'),
      const ListModel(
          name: 'zhangsan', email: 'dddddd@jd.com'),
      const ListModel(
          name: 'zhangsan', email: 'dddddd@jd.com'),
      const ListModel(
          name: 'zhangsan', email: 'dddddd@jd.com'),
      const ListModel(
          name: 'zhangsan', email: 'dddddd@jd.com'),
      const ListModel(
          name: 'zhangsan', email: 'dddddd@jd.com'),
    ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
        title: new Text("list 列表"),
      ),
      body: new ModelList(models)
    );
  }
}
