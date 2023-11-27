import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: const Text('sdfsdf'),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255)
          ),
          body: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('FlutterBoot Plus'),
                Text('본문영역'),
                Text('버튼영역')
              ]
          )
      ),
    );
  }
}