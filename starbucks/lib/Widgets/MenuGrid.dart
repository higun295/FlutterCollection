import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuGrid extends StatelessWidget {
  final String icon;
  final String label;

  const MenuGrid({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // 메뉴 클릭 시 이벤트 처리
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon, width:35, height: 35,
              colorFilter: ColorFilter.mode(Color(0xFF348a5f), BlendMode.srcIn),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
              ),)
          ],
        ),
      ),
    );
  }
}
