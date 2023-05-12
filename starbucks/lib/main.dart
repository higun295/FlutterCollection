import 'package:flutter/material.dart';
import 'MainPageTemplate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbucks App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MainPageTemplate(),
    );
  }
}