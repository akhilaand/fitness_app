import 'package:fitness_app/constants/constants.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Bottom_Navigation extends StatefulWidget {
  @override
  _Bottom_NavigationState createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation>
    with SingleTickerProviderStateMixin {
  int _current_Index = 0;
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          labelColor: black,
          unselectedLabelColor: black26,
          tabs: [
            Tab(
                icon: Icon(
              Icons.favorite_sharp,
            )),
            Tab(icon: Icon(Icons.calendar_today_sharp)),
            Tab(icon: Icon(Icons.stars_rounded)),
            Tab(icon: Icon(Icons.bookmark)),
          ],
        ),
      ),
      body: TabBarView(controller: controller, children: [
        Home(),
        Home(),
        Home(),
        Home(),
      ]),
    );
  }
}
