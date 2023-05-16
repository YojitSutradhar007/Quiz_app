import 'package:flutter/material.dart';
import 'package:quiz_app/app/app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const QuizApp();
  }
}


void main() {
  runApp(const MyApp());
}