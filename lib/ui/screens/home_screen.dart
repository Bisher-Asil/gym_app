import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gym_tracking_app/logic/controllers/exercise_controller.dart';
import 'package:gym_tracking_app/ui/widgets/training_display.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ExerciseCtrl exerciseController = Get.find();
    return SafeArea(
        child: Scaffold(
          body: Obx(() => SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TrainingDisplay(exerciseName: "abs"),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(20)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TrainingDisplay(exerciseName: "back"),
                  ],
                ),
                Text(exerciseController.number1.toString())

              ],
            ),
          )),
        ),
    );
  }
}
