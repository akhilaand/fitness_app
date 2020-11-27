import 'dart:ui';

import 'package:fitness_app/components/horizontal_screen.dart';
import 'package:fitness_app/components/type_of_workout.dart';
import 'package:fitness_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      size: 30,
                      color: grey,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage('assets/images/circleavatar.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select',
                      style: TextStyle(
                          fontSize: 40,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Workout',
                      style: TextStyle(
                          fontSize: 40,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Horizontal_Screen(),
                    Type_Of_Workout()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
