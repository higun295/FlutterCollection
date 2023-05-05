import 'package:flutter/material.dart';
import 'extensions/datetimeExtension.dart';

class CustomText extends StatelessWidget {

  final bool? isDark;
  final double? fontSize;
  const CustomText({this.isDark, this.fontSize, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Ultima atualizacao : ',
          style: TextStyle(
            fontSize: this.fontSize,
            color: this.isDark == true ? Colors.white : Colors.black
          ),
        ),
        Text(
          '${DateTime.now().customDateTime()}',
          style: TextStyle(
            fontSize: this.fontSize,
            color: this.isDark == true ? Colors.white : Colors.black
          ),
        ),
      ],
    );
  }
}
