import 'package:flutter/material.dart';

import '../resources/import_resources.dart';
import '../resources/resources.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xff579bf5),
            fontFamily: "CrimsonText"
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: routes,
        );
      },
    );
  }
}
