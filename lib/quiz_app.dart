import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/queustions_screen/questions_screen.dart';
import 'package:flutter_quiz/screens/results_screen/results_screen.dart';

import './screens/start_screen/start_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StartScreen(),
      ),
    );
  }
}
