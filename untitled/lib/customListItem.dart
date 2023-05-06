import 'package:flutter/material.dart';
import 'customText.dart';
import 'customItem.dart';
import 'enums/globalEnum.dart';

class CustomListItem extends StatelessWidget {
  final GlobalType globalType;

  const CustomListItem({required GlobalType this.globalType, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Atualizacao Global',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                  'Atualizar',
                  style: TextStyle(fontSize: 18, color: Color(0xFF74aeed))
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomItem(
                deviceWidth: MediaQuery.of(context).size.width,
                title: 'Confirmados',
                count: 2.1,
                unit: 'm',
                fontColor: Color(0xFF59a0f4),
              ),
              SizedBox(width: 10),
              CustomItem(
                deviceWidth: MediaQuery.of(context).size.width,
                title: 'Recuperados',
                count: 547.0,
                unit: 'k',
                fontColor: Color(0xFF27e128),
              ),
              SizedBox(width: 10),
              CustomItem(
                deviceWidth: MediaQuery.of(context).size.width,
                title: 'Mortes',
                count: 145.5,
                unit: 'k',
                fontColor: Color(0xFFf9487e),
              ),
            ],
          ),
          CustomText(isDark: false, fontSize: 18)
        ],
      ),
    );
  }
}
