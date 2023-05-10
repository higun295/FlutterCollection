import 'package:flutter/material.dart';
import 'package:starbucks/Views/Home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Views/Order.dart';
import 'Views/Other.dart';
import 'Views/Pay.dart';
import 'Views/Shop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Starbucks Clone';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      theme: ThemeData(
        primaryColor: Colors.white
      )
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    Home(),
    Pay(),
    Order(),
    Shop(),
    Other(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starbucks'),
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('images/home.svg'),
            activeIcon: SvgPicture.asset('images/home.svg', colorFilter: const ColorFilter.mode(Color(0xFF00b27a), BlendMode.srcIn),),
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('images/pay.svg'),
            activeIcon: SvgPicture.asset('images/pay.svg', colorFilter: const ColorFilter.mode(Color(0xFF00b27a), BlendMode.srcIn),),
            label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('images/order.svg'),
              activeIcon: SvgPicture.asset('images/order.svg', colorFilter: const ColorFilter.mode(Color(0xFF00b27a), BlendMode.srcIn),),
              label: 'shopping_bag'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('images/shop.svg'),
              activeIcon: SvgPicture.asset('images/shop.svg', colorFilter: const ColorFilter.mode(Color(0xFF00b27a), BlendMode.srcIn),),
              label: 'movie'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('images/other.svg'),
              activeIcon: SvgPicture.asset('images/other.svg', colorFilter: const ColorFilter.mode(Color(0xFF00b27a), BlendMode.srcIn),),
              label: 'person'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}