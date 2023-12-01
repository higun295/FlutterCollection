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
  const _ListViewItem({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          width: 1,
          color: Colors.black.withOpacity(0.5)
        )
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            const Icon(Icons.dangerous),
            Text(content)
          ],
        ),
      )
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: const <Widget>[
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
          _ListViewItem(content: 'NGC162 was discovered in 1862'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.navigation),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
