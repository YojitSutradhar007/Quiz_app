import 'package:quiz_app/model/question_summary.dart';
import 'package:quiz_app/model/questions_model.dart';

class QuestionData {
  static List<Questions> data = [
    Questions(
      "What is part of a database that holds only one type of information?",
      ["Field", "Report", "Record", "File"],
    ),
    Questions(
      "'DB' computer abbreviation usually means ?",
      ["Database", "Double Byte", "Data Block", "Driver Boot"],
    ),
    Questions(
      " 'OS' computer abbreviation usually means ?",
      [
        "Operating System",
        "Order of Significance",
        "Open Software",
        "Optical Sensor"
      ],
    ),
    Questions(
      "'.MOV' extension refers usually to what kind of file?",
      [
        "Animation/movie file",
        "Audio file",
        "Image file",
        "MS Office document"
      ],
    ),
    Questions(
      "Which is a type of Electrically-Erasable Programmable Read-Only Memory?",
      ["Flash", "Flange", "Fury", "FRAM"],
    ),
    Questions(
      "What does the term PLC stand for?",
      [
        "Programmable Logic Controller",
        "Piezo Lamp Connector",
        "Program List Control",
        "Programmable Lift Computer"
      ],
    ),
    Questions(
      "Who developed Yahoo?",
      [
        "David Filo & Jerry Yang",
        "Steve Case & Jeff Bezos",
        "Dennis Ritchie & Ken Thompson",
        "Vint Cerf & Robert Kahn"
      ],
    ),
    Questions(
      "'.INI' extension refers usually to what kind of file?",
      [
        "System file",
        "Image file",
        "Hypertext related file",
        "Image Color Matching Profile file"
      ],
    ),
  ];

  static List<QuestionSummary> answers = [];
}
