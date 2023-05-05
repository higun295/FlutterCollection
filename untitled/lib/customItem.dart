import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {

  final double deviceWidth;
  final String? title;
  final double? count;
  final String? unit;
  final Color? fontColor;

  const CustomItem({required this.deviceWidth, this.title, this.count, this.unit, this.fontColor, Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        child: Column(
        children: [
          Positioned(
            child: Text('${this.title}', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Positioned(
            child: Text('${this.count}${this.unit}', style: TextStyle(color: this.fontColor))
          )
        ],
      )
    );
  }
}
