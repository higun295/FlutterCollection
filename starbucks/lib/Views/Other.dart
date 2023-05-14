import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starbucks/Widgets/StarbucksSliverAppBar.dart';

class Other extends StatelessWidget {
  final String appBarTitle;

  const Other({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            StarbucksSliverAppBar(
              appBarTitle: appBarTitle,
              appBarActions: [
                IconButton(
                  icon: SvgPicture.asset('images/bell.svg'),
                  onPressed: () { },
                ),
                IconButton(
                  icon: SvgPicture.asset('images/cog.svg'),
                  onPressed: () { },
                )
              ],
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.0
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return MenuButton(
                    icon: "",
                    label: "Pay",
                  );
                },
                childCount: 5,
              ),
            )
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //         (context, index) {
            //       // 리스트 아이템들을 반환
            //       return ListTile(
            //         title: Text('Search Result $index'),
            //       );
            //     },
            //     childCount: 15,
            //   ),
            // ),
          ],
        )
    );
  }
}
