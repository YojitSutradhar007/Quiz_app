import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: const Color(0xff247ae3),
              fixedSize: const Size(150, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          onPressed: onPressed,
          child:   Text(label)),
    );
  }
}
