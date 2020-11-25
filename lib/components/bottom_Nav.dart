import 'package:flutter/material.dart';

class Bottom_Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey.shade400,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.favorite_sharp)),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_today_sharp)),
              BottomNavigationBarItem(icon: Icon(Icons.stars_rounded)),
              BottomNavigationBarItem(icon: Icon(Icons.bookmark)),
            ]),
      ),
    );
  }
}
