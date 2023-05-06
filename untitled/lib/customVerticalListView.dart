import 'package:flutter/material.dart';
import 'customListItem.dart';

class CustomListView extends StatelessWidget {

  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CustomListItem(),
        CustomListItem(),
      ],
    );
  }
}
