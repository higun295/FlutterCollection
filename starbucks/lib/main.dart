import 'package:flutter/material.dart';
import 'MainPageTemplate.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starbucks App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MainPageTemplate(),
    );
  }
}
