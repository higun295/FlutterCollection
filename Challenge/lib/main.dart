import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildAdCard({
    required IconData iconData,
    required String title,
    required String content
  }){
   return Row(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Icon(
         iconData,
         size: 36,
       ),
       const SizedBox(width: 24),
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisSize: MainAxisSize.min,
           children: [
             Text(
               title,
               style: const TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w600,
               ),
             ),
             const SizedBox(height: 2),
             Text(
                 content
             )
           ],
         )
       )
     ],
   );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterBoot',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(),
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'FlutterBoot Plus',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildAdCard(
                      iconData: Icons.bolt,
                      title: 'Premium features',
                      content: 'Plus subscribers have access to FlutterBoot+ and out latest beta features.'
                  ),
                  const SizedBox(height: 24),
                  _buildAdCard(
                      iconData: Icons.whatshot,
                      title: 'Priority access',
                      content: 'You\'ll be able to use FlutterBoot+ even when demand is high',
                  ),
                  const SizedBox(height: 24),
                  _buildAdCard(
                    iconData: Icons.speed,
                    title: 'Ultra-fase',
                    content: 'Enjoy even faster response speeds when using FlutterBoot',
                  ),
                  // Column(
                  //   children: [
                  //     const Text('Auto-renews for \$25/month until canceled'),
                  //     const Text('버튼영역')
                  //   ],
                  // )
                ]
            )
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
            Text(content)
          ],
        )
      ],
    );
  }
}