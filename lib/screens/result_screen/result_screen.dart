import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';

class FinalResult extends StatefulWidget {
  const FinalResult({Key? key}) : super(key: key);

  @override
  State<FinalResult> createState() => _FinalResultState();
}

class _FinalResultState extends State<FinalResult> {
  List<String> ans = [];
  void correct() async {
  print(QuestionData.answers.length);
    for (int i = 0; i < QuestionData.answers.length; i++) {
      if (QuestionData.answers[i] == QuestionData.data[i].options[0]) {
        ans.add(QuestionData.answers[i]);
        print(ans);
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    correct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
