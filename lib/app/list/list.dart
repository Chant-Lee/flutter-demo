
import 'package:flutter/material.dart';
import 'package:demo/app/model/list_model.dart';
import 'package:demo/app/list/list_item.dart';
class ModelList extends StatelessWidget {
  final List<ListModel> modal;

  ModelList(this.modal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: buildList(),
    );
  }

  List<ListItem> buildList() {
    return modal
        .map((item) => new ListItem(item))
        .toList();
  }
}