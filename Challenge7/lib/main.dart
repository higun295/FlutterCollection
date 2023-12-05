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
        primarySwatch: Colors.blue,
        useMaterial3: true
      ),
      home: const MyHomePage(title: 'Hello Overlay'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.w400
            ),
          ),
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: OutlinedButton(onPressed: null, child: Text('Hello!')),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: OutlinedButton(onPressed: null, child: Text('Hello!')),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: OutlinedButton(onPressed: null, child: Text('Hello!')),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: OutlinedButton(onPressed: null, child: Text('Hello!')),
            ),
          ],
        ),
      ),
    );
  }
}