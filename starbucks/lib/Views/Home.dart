import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 150,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Starbucks App'),
          ),
        ),
        SliverFillRemaining(
          child: Text('home'),
        ),
      ],
    );

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
  }
}
