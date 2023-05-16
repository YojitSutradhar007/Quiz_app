import 'package:quiz_app/model/questions_model.dart';

class QuestionData {
  static List<Questions> data = [
        Questions("What is Your Name?", ["Jenny", "John", "Ractor", "Drake"]),
        Questions("What is Your favourite fruit?",
        ["Apple", "Mango", "Banana", "Watermelon"]),
        Questions(
        "What is Your Place?", ["London", "America", "Canada", "Australia"]),
        Questions(
        "What is Your Food?", ["Burger", "Momo's", "Pizza", "Shake"]),
  ];

  static List<String> answers=[];

}
