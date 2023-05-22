import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starbucks/Widgets/MenuGridCell.dart';
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
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == 0) {
                  return MenuGridCell(
                    icon: 'images/star-history.svg',
                    label: '별 히스토리',
                    onTap: () {
                      print('버튼 1 탭');
                    },
                  );
                }
                if (index == 1) {
                  return MenuGridCell(
                    icon: 'images/receipt.svg',
                    label: '전자영수증',
                    onTap: () {
                      print('버튼 1 탭');
                    },
                  );
                }
                if (index == 2) {
                  return MenuGridCell(
                    icon: 'images/star-history.svg',
                    label: '별 히스토리',
                    onTap: () {
                      print('버튼 1 탭');
                    },
                  );
                }
                if (index == 3) {
                  return MenuGridCell(
                    icon: 'images/star-history.svg',
                    label: '별 히스토리',
                    onTap: () {
                      print('버튼 1 탭');
                    },
                  );
                }
                if (index == 4) {
                  return MenuGridCell(
                    icon: 'images/star-history.svg',
                    label: '별 히스토리',
                    onTap: () {
                      print('버튼 1 탭');
                    },
                  );
                }
                if (index == 5) {
                  return MenuGridCell(
                    icon: 'images/star-history.svg',
                    label: '별 히스토리',
                    onTap: () {
                      print('버튼 1 탭');
                    },
                  );
                }
                if (index == 6) {
                  return MenuGridCell(
                    icon: 'images/star-history.svg',
                    label: '별 히스토리',
                    onTap: () {
                      print('버튼 1 탭');
                    },
                  );
                }
                if (index == 7) {
                  return MenuGridCell(
                    icon: 'images/star-history.svg',
                    label: '별 히스토리',
                    onTap: () {
                      print('버튼 1 탭');
                    },
                  );
                }
              },
              childCount: 9,
            ),
          ),
          // SliverToBoxAdapter(
            // child: GridView.builder(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            //   itemCount: 9,
            //   itemBuilder: (BuildContext context, int index) {
            //     return MenuGridCell(icon: 'images/star-history.svg', label: '별 히스토리');
            //   },
            // )
            // child: GridView.count(
            //   crossAxisCount: 3,
            //   children: <Widget>[
            //   ],
            // )
            // child: Table(
            //   children: [
            //     TableRow(
            //       children: [
            //         TableCell(child: MenuGridCell(icon: 'images/star-history.svg', label: '별 히스토리'),),
            //         TableCell(child: Container(),),
            //         TableCell(child: Container(),),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //       MenuGridCell(icon: 'images/star-history.svg', label: '별 히스토리'),
            //       MenuGridCell(icon: 'images/receipt.svg', label: '전자영수증'),
            //       MenuGridCell(icon: 'images/my-menu.svg', label: '나만의 메뉴'),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //       MenuGridCell(icon: 'images/lock.svg', label: '개인정보 관리'),
            //       MenuGridCell(icon: 'images/account.svg', label: '계정정보'),
            //       MenuGridCell(icon: 'images/star-history.svg', label: '전자영수증'),
            //       ],
            //     ),
            //   ],
            // ),
          // ),
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