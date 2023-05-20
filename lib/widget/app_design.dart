import 'package:flutter/material.dart';
import 'package:quiz_app/resources/import_resources.dart';

import '../resources/resources.dart';

class AppDesign extends StatelessWidget {
  const AppDesign({super.key,  required  this.appBarTitle});

  final String  appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          ProjectImage.appIconImage,
          height: 50.h,
        ),
        Text(
          appBarTitle,
          style: TextStyle(fontSize: 25.sp, fontFamily: "BrunoAce"),
        )
      ],
    );
  }
}
