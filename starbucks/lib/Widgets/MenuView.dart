import 'package:flutter/material.dart';
import 'MenuButton.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 2,
          itemBuilder: (context, index) {
            return MenuButton(icon: 'images/bell.svg', label: '스타벅스 카드 등록');
          }
        )
      ],
    );
    // return Table(
    //   defaultColumnWidth: FixedColumnWidth(MediaQuery.of(context).size.width * 0.4),
    //   children: [
    //     TableRow(
    //       children: [
    //         TableCell(
    //           child: Text(
    //               title,
    //               style: TextStyle(
    //                   fontSize: 18.0,
    //                   fontWeight: FontWeight.bold
    //               )
    //           ),
    //           verticalAlignment: TableCellVerticalAlignment.middle,
    //         ),
    //         TableCell(child: SizedBox.shrink())
    //       ],
    //     ),
    //     TableRow(
    //       children: [
    //         MenuButton(icon: 'images/bell.svg', label: '스타벅스 카드 등록'),
    //         MenuButton(icon: 'images/bell.svg', label: '쿠폰등록'),
    //       ],
    //     ),
    //     TableRow(
    //       children: [
    //         MenuButton(icon: 'images/bell.svg', label: '카드 교환권 등록'),
    //         MenuButton(icon: 'images/bell.svg', label: '쿠폰 히스토리'),
    //       ],
    //     ),
    //   ],
    // );
  }
}
