import 'package:flutter/material.dart';
import 'package:demo/app/model/list_model.dart';

class ListItem extends StatelessWidget {

  final ListModel itemModel;

  ListItem(this.itemModel);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        title: new Text(itemModel.name),
        subtitle: new Text(itemModel.email));
  }
}