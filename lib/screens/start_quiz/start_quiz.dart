import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/widget/widget.dart';
import '../../model/question_summary.dart';

class StartQuiz extends StatefulWidget {
  const StartQuiz({Key? key}) : super(key: key);

  @override
  State<StartQuiz> createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {
  int questionCount = 0;
  List<String> quizButton = List.of(QuestionData.data[0].getShuffledAnswers());

  void nextQuestion(int answer) {
    QuestionData.answers.add(
      QuestionSummary(
          index: questionCount,
          question: QuestionData.data[questionCount].question,
          correctAnswer: QuestionData.data[questionCount].options[0],
          chooseAnswer: quizButton[answer]),
    );
    questionCount++;
    if (questionCount == QuestionData.data.length) {
      setState(
        () {
          questionCount = 0;
          quizButton = List.of(QuestionData.data[0].getShuffledAnswers());
          context.goNamed("Result");
        },
      );
    } else {
      quizButton = List.of(QuestionData.data[questionCount].getShuffledAnswers());
    }
  }

  @override
  void initState() {
    super.initState();
    QuestionData.answers.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15).w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  QuestionData.data[questionCount].question,
                  style:   TextStyle(fontSize: 23.sp ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: quizButton.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding:   EdgeInsets.symmetric(horizontal: 40.w),
                    child: Button(
                      onPressed: () {
                        setState(
                          () {
                            nextQuestion(index);
                          },
                        );
                      },
                      label: quizButton[index],
                    ),
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

