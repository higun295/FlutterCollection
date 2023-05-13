import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Views/Home.dart';
import '../Views/Order.dart';
import '../Views/Other.dart';
import '../Views/Pay.dart';
import '../Views/Shop.dart';

class MainPageTemplate extends StatefulWidget {
  @override
  _MainPageTemplate createState() => _MainPageTemplate();
}

class _MainPageTemplate extends State<MainPageTemplate> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Home(appBarTitle: 'Home',),
    const Pay(appBarTitle: 'Pay',),
    const Order(appBarTitle: 'Order',),
    const Shop(appBarTitle: 'Starbucks Online Store',),
    const Other(appBarTitle: 'Other',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFF348a5f),
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
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}