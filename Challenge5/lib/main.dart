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
        useMaterial3: true
      ),
      home: const MyHomePage(title: 'My First ListView!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _ListViewItem extends StatelessWidget {
  const _ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      
    );
  }
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
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
            Container(
              height: 50,
              child: Text('NGC162 was discovered in 1862'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.navigation),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
