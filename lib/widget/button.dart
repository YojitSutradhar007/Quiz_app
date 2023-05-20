import 'package:flutter/material.dart';
import 'package:quiz_app/resources/resources.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 2,
              backgroundColor: backgroundColor ?? ColorManager.whiteColor,
              fixedSize: const Size(170, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.black, width: 1))),
          onPressed: onPressed,
          child: Text(
            label,
            style:   TextStyle(color: textColor??ColorManager.blackColor),
          )),
    );
  }
}
