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
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
          children: [
            SvgPicture.asset(icon, width:48, height: 48,),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),)
          ],
        ),
      ),
    );
  }
}
