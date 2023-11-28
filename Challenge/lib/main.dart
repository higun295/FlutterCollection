import 'dart:ffi';

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
     crossAxisAlignment: CrossAxisAlignment.center,
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
               content,
               style: TextStyle(
                 fontSize: 14,
                 color: Colors.black.withOpacity(0.6)
               ),
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
                    fontWeight: FontWeight.w800,
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
                const Expanded(child: SizedBox()),
                Center(
                  child: Text(
                    'Restore subscription',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.8)
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: Text(
                    'Auto-renews for \$25/month until canceled',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 16
                    ),
                  )
                ),
                const Center(
                  child: TextButton(
                    onPressed: null,
                    child: Text('Subscribe'),
                  ),
                )
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