import 'package:gym_tracking_app/Config/routes/unknown_route.dart';
//import 'package:dfu/ui/screens/cleaning_screen.dart';

import 'package:get/get.dart';

class Routes {
  Routes._();

  static GetPage<dynamic> notFound = GetPage(
    name: '/notFound',
    page: () => const UnknownRoute(),
  );

  static List<GetPage<dynamic>> getPages = [
    /*GetPage(
        name: homeScreen,
        page: () => const HomeScreen(),
        transition: Transition.noTransition),*/
  ];
  static String homeScreen = "/";
  static String settingsMainScreen = "/settingsMainScreen";
  static String settingsAppScreen = "/settingsAppScreen";
  static String pdfScreen = "/pdfScreen";
  static String manuelWashScreen = "/manuelWashScreen";
  static String timeSettingScreen = "/timeSettingScreen";
  static String cleaningScreen = "/cleaningScreen";
  static String testScreen = "/testScreen";
}