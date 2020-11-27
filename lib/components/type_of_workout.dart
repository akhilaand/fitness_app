import 'package:fitness_app/data/type_of_workout_data.dart';
import 'package:flutter/material.dart';

class Type_Of_Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: workout.length,
        itemBuilder: (context, index) => Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(workout[index].name),
              Container(
                color: Colors.blueGrey,
                height: 200,
                child: Image.asset(workout[index].img),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
      ),
    );
  }
}
