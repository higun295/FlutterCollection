import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Views/Home.dart';
import '../Views/Order.dart';
import '../Views/Other.dart';
import '../Views/Pay.dart';
import '../Views/Shop.dart';

class SbBottomNavigationBar extends StatefulWidget {
  @override
  SbPageState createState() => SbPageState();
}

class SbPageState extends State<SbBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgets = [
    Home(), Pay(), Order(), Shop(), Other(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _widgets[_selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('images/home.svg',),
              activeIcon: SvgPicture.asset(
                'images/home.svg',
                colorFilter: const ColorFilter.mode(Color(0xFF348a5f), BlendMode.srcIn),
              ),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('images/pay.svg',),
              activeIcon: SvgPicture.asset(
                'images/pay.svg',
                colorFilter: const ColorFilter.mode(Color(0xFF348a5f), BlendMode.srcIn),
              ),
              label: 'Pay'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('images/order.svg',),
              activeIcon: SvgPicture.asset(
                'images/order.svg',
                colorFilter: const ColorFilter.mode(Color(0xFF348a5f), BlendMode.srcIn),
              ),
              label: 'Order'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('images/shop.svg',),
              activeIcon: SvgPicture.asset(
                'images/shop.svg',
                colorFilter: const ColorFilter.mode(Color(0xFF348a5f), BlendMode.srcIn),
              ),
              label: 'Shop'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('images/other.svg',),
              activeIcon: SvgPicture.asset(
                'images/other.svg',
                colorFilter: const ColorFilter.mode(Color(0xFF348a5f), BlendMode.srcIn),
              ),
              label: 'Other'
          ),
        ],
        selectedItemColor: Color(0xFF348a5f),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}