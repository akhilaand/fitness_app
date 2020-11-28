import 'dart:ui';

import 'package:fitness_app/constants/constants.dart';
import 'package:fitness_app/data/type_of_workout_data.dart';
import 'package:fitness_app/screens/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Type_Of_Workout extends StatelessWidget {
  void _bottomSheet({context, size, img, instructor, name, time, color}) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: size.height * 0.9,
            child: Container(
              decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width,
                        child: Image.asset(img),
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25))),
                        height: size.height * 0.50,
                      ),
                      Positioned(
                        bottom: 80,
                        left: 10,
                        child: Text(
                          name,
                          style: TextStyle(
                              letterSpacing: 0.5,
                              color: white,
                              fontSize: 30,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Positioned(
                        bottom: 80,
                        right: 10,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(Icons.play_arrow),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  time,
                                  style: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  instructor,
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.5),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: white,
                                )
                              ],
                            ),
                            Icon(
                              Icons.stars_rounded,
                              color: yellow,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Yoga coach  .  3 more lessons',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11.5),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'Let\'s Go',
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.5),
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  blue_200,
                                  blue_600,
                                ],
                                stops: [0.12, 0.85],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: size.width,
                          height: size.height * 0.07,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_circle_fill,
                                color: white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Preview',
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.5),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: lightBlack,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: size.width,
                          height: size.height * 0.07,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          ''' Yoga as exercise is a physical activity consisting largely of asanas, often connected by flowing sequences called vinyasas, sometimes accompanied by the breathing exercises of pranayama, and usually ending with a period of relaxation or meditation.''',
                          style: TextStyle(
                              color: grey,
                              letterSpacing: 1,
                              height: 1.5,
                              fontWeight: FontWeight.w300,
                              fontSize: 11.5),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 400,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: workout.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 23.0),
          child: InkWell(
            onTap: () => _bottomSheet(
                context: context,
                size: size,
                img: workout[index].img,
                instructor: workout[index].instructor,
                name: workout[index].name,
                time: workout[index].time,
                color: workout[index].color),
            // onTap: () {
            //   Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) => Detail(

            //           )));
            // },
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              workout[index].name,
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'with ${workout[index].instructor}',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Icon(Icons.play_arrow),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      workout[index].time,
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                            )
                          ],
                        ),
                        Container(
                          height: 150,
                          child: Image.asset(workout[index].img),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: workout[index].color,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
          ),
        ),
      ),
    );
  }
}
