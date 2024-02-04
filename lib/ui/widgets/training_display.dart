import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gym_tracking_app/config/image/image_paths.dart';
import 'package:gym_tracking_app/logic/controllers/exercise_controller.dart';

class TrainingDisplay extends StatelessWidget {
  final String exerciseName;
  const TrainingDisplay({Key? key, required this.exerciseName});
  @override
  Widget build(BuildContext context) {
    ExerciseCtrl exController = Get.find();
    return Padding(padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(exerciseName),
          SizedBox(width: 20,),
          Image.asset(ImagePaths().GiveImagePathForExercise(exerciseName))
        ],
      ),
    );
  }
}
