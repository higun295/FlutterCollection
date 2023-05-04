import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            color: Color(0xFF211f4e),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
          ),
        ),
        Positioned(
          left: 200, bottom: 30,
          child: Image(
            image: AssetImage('assets/images/virus.png'),
            width: 250, height: 250,
            color: Color(0xFF411a76),
          ),
        ),
        Positioned(
          left: 25, top: 120,
          child: Text(
            "Covid-19 Atualizacao Global",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        Positioned(
          left: 27, top: 155,
          child: Text(
            "Ultima atualizacao: 16 abril, 2020 | 22:07:24",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        Positioned(
          right: 20, top: 185,
          child: Text(
            "v1.0.0",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}
