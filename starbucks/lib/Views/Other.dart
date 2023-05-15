import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starbucks/Widgets/MenuView.dart';
import 'package:starbucks/Widgets/StarbucksSliverAppBar.dart';

import '../Widgets/MenuButton.dart';

class Other extends StatelessWidget {
  final String appBarTitle;

  const Other({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
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
            SliverToBoxAdapter(
              child: Table(
                children: [
                  TableRow(
                    children: [
                      MenuButton(icon: 'images/bell.svg', label: '쿠폰등록'),
                      MenuButton(icon: 'images/bell.svg', label: '쿠폰등록'),
                    ],
                  ),
                  TableRow(
                    children: [
                      MenuButton(icon: 'images/bell.svg', label: '쿠폰 히스토리'),
                      MenuButton(icon: 'images/bell.svg', label: '쿠폰등록'),
                    ],
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(16.0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 3.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return MenuView();
                  },
                  childCount: 5
                ),
              )
            )
            // SliverGrid(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     mainAxisSpacing: 16,
            //     crossAxisSpacing: 16,
            //     childAspectRatio: 1.0
            //   ),
            //   delegate: SliverChildBuilderDelegate(
            //     (BuildContext context, int index) {
            //       return MenuButton(
            //         icon: "images/bell.svg",
            //         label: "Pay",
            //       );
            //     },
            //     childCount: 15,
            //   ),
            // )
          ],
        )
    );
  }
}
