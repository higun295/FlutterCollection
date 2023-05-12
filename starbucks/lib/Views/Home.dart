import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String appBarTitle;

  Home({required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(appBarTitle),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                // 리스트 아이템들을 반환
                return ListTile(
                  title: Text('Search Result $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      )
    );
  }
}