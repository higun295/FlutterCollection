import 'package:flutter/material.dart';
import 'package:starbucks/Widgets/StarbucksSliverAppBar.dart';

class Home extends StatelessWidget {
  final String appBarTitle;
  const Home({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            StarbucksSliverAppBar(
              appBarTitle: appBarTitle,
              appBarActions: null,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  // 리스트 아이템들을 반환
                  return ListTile(
                    title: Text('Search Result $index'),
                  );
                },
                childCount: 15,
              ),
            ),
          ],
        )
    );
  }
}
