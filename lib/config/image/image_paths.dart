//This class is for local image paths in the assets folder

class ImagePaths {
  String GiveImagePathForExercise(String ExerciseName){
    switch(ExerciseName.toLowerCase()){
      case "abs":
        return abs;
      case "back":
        return back;
      case "biceps":
        return biceps;
      case "calves":
        return calves;
      case "chest":
        return chest;
      case "frontlegs":
        return frontLegs;
      case "lowerback":
        return lowerBack;
      case "shoulders":
        return shoulders;
      case "thighs":
        return thighs;
      default:
        return "";
    }

    return "";
  }
  static const String abs = "assets/images/Muscles/Abs.png";
  static const String back = "assets/images/Muscles/Back.png";
  static const String biceps = "assets/images/Muscles/Biceps.png";
  static const String calves = "assets/images/Muscles/Calves.png";
  static const String chest = "assets/images/Muscles/Chest.png";
  static const String frontLegs = "assets/images/Muscles/FrontLegs.png";
  static const String lowerBack = "assets/images/Muscles/LowerBack.png";
  static const String shoulders = "assets/images/Muscles/Shoulders.png";
  static const String thighs = "assets/images/Muscles/Thighs.png";
}