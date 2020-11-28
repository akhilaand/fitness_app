import 'package:fitness_app/constants/constants.dart';
import 'package:fitness_app/modal/Type_of_workout_modal.dart';

final _workout1 = Type_Of_Workout_modal(
    name: 'Yoga',
    img: "assets/images/yoga.png",
    instructor: 'Jany August',
    color: pink,
    time: '25 min');

final _workout2 = Type_Of_Workout_modal(
    name: 'Drill',
    color: blue,
    img: "assets/images/drill.png",
    instructor: 'Daniel ',
    time: '7 min');
List<Type_Of_Workout_modal> workout = [_workout1, _workout2];
