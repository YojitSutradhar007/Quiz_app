import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/widget/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionCount = 0;
  List<String> quizButton = List.of(QuestionData.data[0].getShuffledAnswers());
  void nextQuestion(int index,int answer) {
    index++;
    questionCount++;
    QuestionData.answers.add(quizButton[answer]);
    if (index == QuestionData.data.length) {
      setState(
        () {
          questionCount = 0;
          quizButton = List.of(QuestionData.data[0].getShuffledAnswers());
          context.goNamed("Result");
        },
      );
    }else{
      quizButton = List.of(QuestionData.data[index].getShuffledAnswers());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  QuestionData.data[questionCount].question,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: quizButton.length,
                itemBuilder: (context, int ok) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Button(
                        onPressed: () {
                          setState(() {
                            nextQuestion(questionCount,ok);
                          });
                        },
                        label: quizButton[ok]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
