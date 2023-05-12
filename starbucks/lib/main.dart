import 'package:flutter/material.dart';
import 'NavigationBar/BottomNavigationBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       expandedHeight: 150,
        //       pinned: true,
        //       flexibleSpace: FlexibleSpaceBar(
        //         title: Text('Starbucks App'),
        //       ),
        //     ),
        //     SliverFillRemaining(
        //       child: MyHomePage(),
        //     ),
        //   ],
        // ),
        bottomNavigationBar: SbBottomNavigationBar(),
      ),
    );
  }
}