import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/queustions_screen/questions_screen.dart';

import 'package:flutter_quiz/screens/results_screen/results_screen.dart';

import './screens/start_screen/start_screen.dart';
import 'models/question.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);

      if (selectedAnswers.length == questions.length) {
        activeScreen = 'results-screen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(startQuiz: switchScreen);

    if (activeScreen == 'questions-screen') {
      currentScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'results-screen') {
      currentScreen =  ResultsScreen(choosenAnswer: selectedAnswers);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: currentScreen,
      ),
    );
  }
}
