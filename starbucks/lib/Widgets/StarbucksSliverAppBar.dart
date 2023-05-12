import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StarbucksSliverAppBar extends StatelessWidget {
  final String appBarTitle;

  const StarbucksSliverAppBar({required this.appBarTitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      expandedHeight: 150,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          appBarTitle,
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
        background: Container(
          decoration: const BoxDecoration(
              color: Colors.white
          ),
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: SvgPicture.asset('images/bell.svg'),
          onPressed: () { },
        ),
        IconButton(
          icon: SvgPicture.asset('images/cog.svg'),
          onPressed: () { },
        )
      ],
    );
  }
}
