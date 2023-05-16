import 'package:flutter/material.dart';
import 'package:quiz_app/resources/import_resources.dart';
import '../../resources/resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigation();
  }

  void navigation() {
    Duration duration = const Duration(seconds: 1);
    Future.delayed(duration, () {
      context.go("/HomePage");
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff5899E2), Color(0xffFFFFFF)],
                  end: Alignment.topLeft,
                  begin: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.all(15.0).w,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    ProjectImage.appIconImage,
                    height: 50.h,
                  ),
                  Text(
                    "Quiz Master",
                    style: TextStyle(
                        fontSize: 25.sp, fontFamily: "BrunoAce"),
                  )
                ],),
            ),
          ),
        ),
      ),
    );
  }
}
