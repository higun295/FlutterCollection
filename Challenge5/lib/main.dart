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
        useMaterial3: true,
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Container(
              color: Colors.black,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'No matter what widgets are in the middle animation should not be obscured.',
                style: TextStyle(
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: null,
              child: Text('Shoot Star!'),
            ),
          )
        ],
      ),
    );
  }
}