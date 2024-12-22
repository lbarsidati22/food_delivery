import 'package:flutter/material.dart';
import 'package:food_delevery/pages/account_page.dart';
import 'package:food_delevery/pages/favorite_page.dart';
import 'package:food_delevery/pages/home_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

int selctedIndex = 0;

class _NavBarState extends State<NavBar> {
  void onItemTap(int index) {
    setState(() {
      selctedIndex = index;
    });
  }

  List<Widget> bodyOption = [
    HomePage(),
    FavoritePage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      drawer: Drawer(
        child: Center(
          child: Text('i am in the drawer'),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        title: Text('Foodak'),
      ),
      body: bodyOption[selctedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        onTap: onItemTap,
        currentIndex: selctedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
