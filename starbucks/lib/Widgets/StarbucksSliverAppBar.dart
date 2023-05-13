import 'package:flutter/material.dart';

class StarbucksSliverAppBar extends StatelessWidget {
  final String appBarTitle;
  final List<IconButton>? appBarActions;

  const StarbucksSliverAppBar({
    required this.appBarTitle,
    this.appBarActions,
    Key? key
  }) : super(key: key);

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
      actions: appBarActions,
    );
  }
}
