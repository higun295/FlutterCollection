import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starbucks/Widgets/MenuGrid.dart';
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
                    TableCell(child: MenuGrid(icon: 'images/star-history.svg', label: '별 히스토리'),),
                    TableCell(child: Container(),),
                    TableCell(child: Container(),),
                  ],
                ),
                TableRow(
                  children: [
                    MenuGrid(icon: 'images/star-history.svg', label: '별 히스토리'),
                    MenuGrid(icon: 'images/receipt.svg', label: '전자영수증'),
                    MenuGrid(icon: 'images/my-menu.svg', label: '나만의 메뉴'),
                  ],
                ),
                TableRow(
                  children: [
                    MenuGrid(icon: 'images/lock.svg', label: '개인정보 관리'),
                    MenuGrid(icon: 'images/account.svg', label: '계정정보'),
                    MenuGrid(icon: 'images/star-history.svg', label: '전자영수증'),
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
                childCount: 1
              ),
            )
          )
        ],
      )
    );
  }
}