import 'package:flutter/material.dart';
import 'package:untitled/customContainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomContainer(),
            ],
          ),
          top: true,
          bottom: true,
          right: true,
          left: true,
          maintainBottomViewPadding: true,
        )
      )
    );
  }
}