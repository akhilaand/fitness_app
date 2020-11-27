import 'package:fitness_app/components/bottom_Nav.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Bottom_Navigation());
  }
}
