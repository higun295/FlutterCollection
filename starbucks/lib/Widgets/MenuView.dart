import 'package:flutter/material.dart';
import 'MenuButton.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: FixedColumnWidth(MediaQuery.of(context).size.width * 0.4),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Text(
                'Pay',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                )
              ),
              verticalAlignment: TableCellVerticalAlignment.middle,
            ),
            TableCell(child: SizedBox.shrink())
          ],
        ),
        TableRow(
          children: [
            MenuButton(icon: 'images/bell.svg', label: '스타벅스 카드 등록'),
            MenuButton(icon: 'images/bell.svg', label: '쿠폰등록'),
          ],
        ),
        TableRow(
          children: [
            MenuButton(icon: 'images/bell.svg', label: '카드 교환권 등록'),
            MenuButton(icon: 'images/bell.svg', label: '쿠폰 히스토리'),
          ],
        ),
      ],
    );
  }
}
