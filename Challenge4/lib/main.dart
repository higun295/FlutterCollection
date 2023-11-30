import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hello TextField!'),
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
  late FocusNode leftFocusNode;
  late FocusNode rightFocusNode;

  @override
  void initState() {
    super.initState();
    leftFocusNode = FocusNode();
    rightFocusNode = FocusNode();
  }
  @override
  void dispose(){
    rightFocusNode.dispose();
    leftFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Focus(
              focusNode: leftFocusNode,
              onKey: (fn, event) {
                if(event.logicalKey == LogicalKeyboardKey.enter) {
                  FocusScope.of(context).requestFocus(leftFocusNode);
                  return KeyEventResult.handled;
                }
                return KeyEventResult.ignored;
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: const TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                  ),
                )
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Focus(
              focusNode: rightFocusNode,
              onKey: (fn, event) {
                if(event.logicalKey == LogicalKeyboardKey.enter) {
                  FocusScope.of(context).requestFocus(rightFocusNode);
                  return KeyEventResult.handled;
                }
                return KeyEventResult.ignored;
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: const TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                  ),
                )
              ),
            )
          ],
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}