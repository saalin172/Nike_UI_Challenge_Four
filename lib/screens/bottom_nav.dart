import 'package:flutter/material.dart';
import 'package:nike_ui/screens/details.dart';

import 'home_screen.dart';

class NavButton extends StatefulWidget {
  const NavButton({Key? key}) : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  int index = 0;
  List screens = [
    HomeScreen(),
    DetailsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: Colors.blue,
        ),
        iconSize: 30,
        onTap: (newValue) {
          setState(() {
            index = newValue;
          });
          //screens[index];
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "Home",
          ),
        ],
      ),
      body: HomeScreen(),
    );
  }
}
