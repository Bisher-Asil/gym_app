//This class is for local image paths in the assets folder

class ImagePaths {
  String GiveImagePathForExercise(String ExerciseName){
    switch(ExerciseName.toLowerCase()){
      case "abs":
        return abs;
      case "back":
        return back;
      default:
        return "";
    }

    return "";
  }
  static const String abs = "assets/images/Muscles/Abs.png";
  static const String back = "assets/images/Muscles/Back.png";
}