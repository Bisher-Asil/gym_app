import 'package:get/get.dart';
import 'package:gym_tracking_app/logic/controllers/exercise_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ExerciseCtrl>(ExerciseCtrl());
  }
}