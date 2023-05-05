import 'package:flutter/material.dart';
import 'customText.dart';
import 'customHorizontalListView.dart';
import 'customItem.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
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
                    title: 'Confirmados',
                    count: 21,
                    unit: 'm',
                    fontColor: Color(0xFF59a0f4),
                  ),
                  CustomItem(
                    title: 'Recuperados',
                    count: 5470,
                    unit: 'k',
                    fontColor: Color(0xFF27e128),
                  ),
                  CustomItem(
                    title: 'Mortes',
                    count: 1455,
                    unit: 'k',
                    fontColor: Color(0xFFf9487e),
                  ),
                ],
              ),
              CustomText(isDark: false, fontSize: 18)
            ],
          ),
        ),
        ListTile(title: Text('List2')),
        ListTile(title: Text('List3')),
        ListTile(title: Text('List4')),
        ListTile(title: Text('List5')),
        ListTile(title: Text('List6')),
        ListTile(title: Text('List6')),
        ListTile(title: Text('List6')),
        ListTile(title: Text('List6')),
        ListTile(title: Text('List6')),
        ListTile(title: Text('List6')),
        ListTile(title: Text('List6')),
        ListTile(title: Text('List6')),
      ],
    );
  }
}
