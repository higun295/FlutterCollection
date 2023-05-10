import 'package:flutter/material.dart';
import 'package:starbucks/Views/Home.dart';
import 'Views/Home.dart';
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
            icon: _selectedIndex == 0? Icon(Icons.home_filled, color: Colors.black,) : Icon(Icons.home_outlined, color: Colors.black),
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1? Icon(Icons.search, color: Colors.black,) : Icon(Icons.search_off, color: Colors.black),
            label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2? Icon(Icons.shopping_bag, color: Colors.black,) : Icon(Icons.shopping_bag_outlined, color: Colors.black),
              label: 'shopping_bag'
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3? Icon(Icons.movie, color: Colors.black,) : Icon(Icons.movie_outlined, color: Colors.black),
              label: 'movie'
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 4? Icon(Icons.person, color: Colors.black,) : Icon(Icons.person_outlined, color: Colors.black),
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