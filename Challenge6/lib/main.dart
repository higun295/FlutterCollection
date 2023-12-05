import 'dart:math';
import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int screenPoint = 0;

  void setPoint(int point) {
    setState(() {
      screenPoint = point;
      if(context.mounted) {
        Navigator.of(context).pop();
      }
    });
  }

  void flutterDialog() {
    int randomNumber1 = Random().nextInt(100);
    int randomNumber2 = Random().nextInt(100);
    int randomNumber3 = Random().nextInt(100);

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xfff7f1fb),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          title: Text(
            'Choose your next point!',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black.withOpacity(0.8)
            ),
          ),
          content: Flexible(
            child: Text(
              'Choose one of the points below!\n'
              'If you don\'t make a selection, your current score will be retained.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.6)
              ),
            ),
          ),
          actions: <Widget> [
            TextButton(
              onPressed: () => setPoint(randomNumber1),
              child: Text(
                randomNumber1.toString(),
                style: const TextStyle(
                  color: Color(0xff855ec9),
                  fontSize: 16
                ),
              )
            ),
            TextButton(
              onPressed: () => setPoint(randomNumber2),
              child: Text(
                randomNumber2.toString(),
                style: const TextStyle(
                  color: Color(0xff855ec9),
                  fontSize: 16
                ),
              )
            ),
            TextButton(
              onPressed: () => setPoint(randomNumber3),
              child: Text(
                randomNumber3.toString(),
                style: const TextStyle(
                  color: Color(0xff855ec9),
                  fontSize: 16
                ),
              )
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your point : $screenPoint',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xfff7f1fb)
                ),
                onPressed: flutterDialog,
                child: const Text(
                  'I want more points!',
                  style: TextStyle(
                    color: Color(0xff855ec9),
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}