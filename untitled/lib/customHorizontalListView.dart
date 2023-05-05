import 'package:flutter/material.dart';

class CustomHorizontalListView extends StatelessWidget {
  const CustomHorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 150.0,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 150.0,
            color: Colors.red,
          ),
          Container(
            width: 150.0,
            color: Colors.blue,
          ),
          Container(
            width: 150.0,
            color: Colors.green,
          ),
          Container(
            width: 150.0,
            color: Colors.yellow,
          ),
          Container(
            width: 150.0,
            color: Colors.orange,
          ),
        ],
      )
    );
  }
}