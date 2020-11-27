import 'package:fitness_app/modal/Type_of_workout_modal.dart';

final _workout1 = Type_Of_Workout_modal(
    name: 'Yoga',
    img: "assets/images/yoga.png",
    instructor: 'Daniel',
    time: '25 min');

final _workout2 = Type_Of_Workout_modal(
    name: 'Drill',
    img: "assets/images/drill.png",
    instructor: 'Jany',
    time: '7 min');
List<Type_Of_Workout_modal> workout = [_workout1, _workout2];
