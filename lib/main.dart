import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:gym_tracking_app/config/local_storage/storage.dart';
import 'package:gym_tracking_app/config/theme/custom_theme.dart';
import 'package:gym_tracking_app/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'config/routes/routes.dart';
import 'logic/bindings/main_binding.dart';

void main() async {
  await preInitializations();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 1920),
      builder: (context, child) => AdaptiveTheme(
        initial: AdaptiveThemeMode.dark,
        light: CustomAppTheme.instance.lightThemeData(),
        dark: CustomAppTheme.instance.darkThemeData(),
        builder: (light, darkTheme) => GetMaterialApp(
          builder: (context, child) => child ?? Container(),
          theme: light,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          title: 'Gym',
          initialRoute: '/',
          unknownRoute: Routes.notFound,
          getPages: Routes.getPages,
          initialBinding: MainBinding(),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}

Future preInitializations() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

}