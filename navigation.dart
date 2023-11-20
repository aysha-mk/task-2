import 'package:flutter/material.dart';
import 'package:nav_bar/favourites.dart';
import 'package:nav_bar/homescreen.dart';
import 'package:nav_bar/profile.dart';
import 'package:nav_bar/search.dart';

// ignore: use_key_in_widget_constructors
class NavBar extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // ignore: non_constant_identifier_names
  int _Index = 0;

  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const FavouriteScreen(),
    const MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: screens[_Index],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 18,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: BottomNavigationBar(
                currentIndex: _Index,
                onTap: (value) {
                  setState(() {
                    _Index = value;
                  });
                },
                backgroundColor: Colors.white,
                selectedItemColor: const Color.fromARGB(255, 123, 84, 221),
                unselectedItemColor: const Color.fromARGB(255, 194, 155, 225),
                iconSize: 35,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
