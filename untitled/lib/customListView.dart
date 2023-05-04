import 'package:flutter/material.dart';
import 'customText.dart';

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
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Atualizar',
                    style: TextStyle(fontSize: 18, color: Color(0xFF74aeed))
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  
                ],
              ),
              CustomText()
              // layout
              // 작은글씨
            ],
          ),
        ),
        ListTile(title: Text('List2')),
      ],
    );
  }
}
