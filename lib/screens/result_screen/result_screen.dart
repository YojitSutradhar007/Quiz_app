import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/data/question_data.dart';
import '../../resources/resources.dart';
import '../../widget/widget.dart';

class FinalResult extends StatefulWidget {
  const FinalResult({super.key});

  @override
  State<FinalResult> createState() => _FinalResultState();
}

class _FinalResultState extends State<FinalResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: "Final Result"),
      body: Stack(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
              padding: const EdgeInsets.only(bottom: 65,left: 15,right: 15).w,
              itemCount: QuestionData.answers.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 7).w,
                  elevation: 5,
                  shadowColor: ColorManager.greyColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15).r,
                    side: BorderSide(color: ColorManager.greyColor, width: 1.w),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(11).w,
                    leading: CircleAvatar(
                      radius: 22,
                      backgroundColor:
                          QuestionData.answers[index].correctAnswer ==
                                  QuestionData.answers[index].chooseAnswer
                              ? ColorManager.greenColor
                              : ColorManager.redColor,
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(
                            fontSize: 22.sp, color: ColorManager.whiteColor),
                      ),
                    ),
                    title: Text(QuestionData.answers[index].question,
                        style: TextStyle(fontSize: 13.sp)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Correct:-${QuestionData.answers[index].correctAnswer}",
                          style: TextStyle(color: ColorManager.cyanColor),
                        ),
                        Text(
                          "Your Answer:- ${QuestionData.answers[index].chooseAnswer}",
                          style: TextStyle(
                            color: QuestionData.answers[index].correctAnswer ==
                                    QuestionData.answers[index].chooseAnswer
                                ? ColorManager.greenColor
                                : ColorManager.redColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Button(
                    backgroundColor: ColorManager.blackColor,
                    textColor: ColorManager.whiteColor,
                    label: "Restart",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
