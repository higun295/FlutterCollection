import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('sdfsdf'),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            elevation: 0,
          ),
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'FlutterBoot Plus',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                  ),
                ),
                Spacer(flex: 1),
                Column(
                  children: [
                    CustomRow(
                        icon: '전기',
                        title: 'Premium features',
                        content: 'Plus subscribers have access to FlutterBoot+ and out latest beta features.'),
                    CustomRow(
                        icon: '불',
                        title: 'Priority access',
                        content: 'You\'ll be able to use FlutterBoot+ even when demand is high'),
                    CustomRow(
                        icon: '계기',
                        title: 'Ultra-fase',
                        content: 'Enjoy even faster response speeds when using FlutterBoot'),
                  ],
                ),
                Spacer(flex: 25),
                Text('Restore subscription'),
                Spacer(flex: 1),

                Column(
                  children: [
                    const Text('Auto-renews for \$25/month until canceled'),
                    const Text('버튼영역')
                  ],
                )
              ]
          )
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  final String icon;
  final String title;
  final String content;

  const CustomRow({
    Key? key,
    required this.icon,
    required this.title,
    required this.content
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('아이콘'),
        Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Flexible(child: Text(content))
          ],
        )
      ],
    );
  }
}
