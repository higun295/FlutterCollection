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

class CustomOverlay extends StatelessWidget {
  const CustomOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: const Color(0xff9e9e9e),
      ),
      child: const Text(
        '  \u{2B07} You clicked this \u{1F60E}  ',
        style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400
        )
      )
    );
  }
}

GlobalKey key = GlobalKey();

class _MyHomePageState extends State<MyHomePage> {
  OverlayEntry? overlayEntry;
  RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
  Offset position = box?.localToGlobal(Offset.zero);


  void _showOverlay(BuildContext context) async {
    OverlayState? overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: MediaQuery.of(context).size.width * 0.1,
        top: MediaQuery.of(context).size.height * 0.80,
        width: 250,
        child: const CustomOverlay()
      )
    );

    Overlay.of(context).insert(overlayEntry!);
  }

  void _removeOverlay() {
    overlayEntry?.remove();
    overlayEntry?.dispose();
    overlayEntry = null;
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
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
            const SizedBox(height: 30),
            SizedBox(
              key: key,
              width: MediaQuery.of(context).size.width * 0.85,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xfff7f1fb),
                  side: const BorderSide(color: Color(0xFF000000), width: 0.1)
                ),
                onPressed: () {
                  _showOverlay(context);
                },
                child: Text(
                  'Hello!',
                  style: TextStyle(
                    color: const Color(0xff6f43c0).withOpacity(0.9),
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                )
              ),
            ),
            const SizedBox(height: 5),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width * 0.85,
            //   child: OutlinedButton(
            //     style: OutlinedButton.styleFrom(
            //       backgroundColor: const Color(0xfff7f1fb),
            //       side: const BorderSide(color: Color(0xFF000000), width: 0.1)
            //     ),
            //     onPressed: () {
            //       _showOverlay(context);
            //     },
            //     child: Text(
            //       'Press',
            //       style: TextStyle(
            //         color: const Color(0xff6f43c0).withOpacity(0.9),
            //         fontSize: 15,
            //         fontWeight: FontWeight.w600
            //       ),
            //     )
            //   ),
            // ),
            // const SizedBox(height: 5),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width * 0.85,
            //   child: OutlinedButton(
            //     style: OutlinedButton.styleFrom(
            //       backgroundColor: const Color(0xfff7f1fb),
            //       side: const BorderSide(color: Color(0xFF000000), width: 0.1)
            //     ),
            //     onPressed: () {
            //       _showOverlay(context);
            //     },
            //     child: Text(
            //       'any',
            //       style: TextStyle(
            //         color: const Color(0xff6f43c0).withOpacity(0.9),
            //         fontSize: 15,
            //         fontWeight: FontWeight.w600
            //       ),
            //     )
            //   ),
            // ),
            // const SizedBox(height: 5),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width * 0.85,
            //   child: OutlinedButton(
            //     style: OutlinedButton.styleFrom(
            //       backgroundColor: const Color(0xfff7f1fb),
            //       side: const BorderSide(color: Color(0xFF000000), width: 0.1)
            //     ),
            //     onPressed: () {
            //       _showOverlay(context);
            //     },
            //     child: Text(
            //       'button!',
            //       style: TextStyle(
            //         color: const Color(0xff6f43c0).withOpacity(0.9),
            //         fontSize: 15,
            //         fontWeight: FontWeight.w600
            //       ),
            //     )
            //   ),
            // ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xfff7f1fb),
                  side: const BorderSide(color: Color(0xFF000000), width: 0.1)
                ),
                onPressed: _removeOverlay,
                child: Text(
                  'remove overlay',
                  style: TextStyle(
                    color: const Color(0xff6f43c0).withOpacity(0.9),
                    fontSize: 15,
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