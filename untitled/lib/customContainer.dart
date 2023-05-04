import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height * 0.25,
        child: Text("테스트입니다."),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0x211f4d).withOpacity(0.9), Color(0x571C90)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
