import 'package:flutter/material.dart';
import 'extensions/datetimeExtension.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.isDark, this.fontSize}) : super(key: key);

  final bool isDark;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Ultima atualizacao : ',
          style: TextStyle(
            fontSize: this.fontSize,
          ),
        ),
        Text('${DateTime.now().customDateTime()}'),
      ],
    );
  }
}
