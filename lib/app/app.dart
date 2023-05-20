import 'package:flutter/material.dart';
import '../resources/import_resources.dart';
import '../resources/resources.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(
              scaffoldBackgroundColor: ColorManager.grey200Color,
              fontFamily: "CrimsonText"),
          debugShowCheckedModeBanner: false,
          routerConfig: routes,
        );
      },
    );
  }
}
