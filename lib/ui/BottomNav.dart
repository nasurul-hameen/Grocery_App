import 'package:flutter/material.dart';
import 'package:grocery_app/ui/cart.dart';
import 'package:grocery_app/ui/home_page.dart';
import 'package:grocery_app/ui/profile.dart';
import 'package:grocery_app/ui/wishlist.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  List listscreen = [
    const home(),
    const fav(),
    const cart(),
    const profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listscreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedIconTheme: const IconThemeData(color: Colors.black87),
        selectedIconTheme: const IconThemeData(color: Color(0xff7750FF)),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: '',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff7750FF),
        onTap: _onItemTapped,
      ),
    );
  }
}
