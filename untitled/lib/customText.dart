import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Ultima atualizacao : '),
        Text(DateFormat.yMMMd().format(DateTime.now()).toString()),
        Text(' | '),
        Text(DateFormat.Hms().format(DateTime.now()).toString()),
      ],
    );
  }
}
