import 'package:fitness_app/data/horizontal_screen_data.dart';
import 'package:flutter/material.dart';

class Horizontal_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: list1.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Container(
                  height: 60,
                  width: 60,
                  child: FittedBox(
                    child: Image.asset(
                      list1[index].images,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                ));
          }),
    );
  }
}
