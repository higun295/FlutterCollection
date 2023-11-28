import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  int _counter = 0;
  // bool _isRunning = false;
  // double _progressValue = 0.0;
  // late Timer _timer;

  void _incrementCounter() {
    setState(() {
      _counter++;
      // _progressValue += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            const Text(
              'Your Score',
              style: TextStyle(
                fontSize: 30
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '$_counter',
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 45
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: 50,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: LinearProgressIndicator(
                      value: 0,
                      valueColor: const AlwaysStoppedAnimation(Colors.deepPurple),
                      backgroundColor: Colors.black12,
                    )
                  )
                )
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
              child: Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                )
              )
            )
          ],
        ),
      ),
    );
  }
}