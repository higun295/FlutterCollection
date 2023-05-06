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
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      width: this.deviceWidth * 0.27,
      height: this.deviceWidth * 0.19,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 3),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${this.title}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 3),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${this.count}${this.unit}',
                style: TextStyle(
                  color: this.fontColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
