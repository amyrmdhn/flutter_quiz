import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/queustions_screen/questions_screen.dart';

import './screens/start_screen/start_screen.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: QuestionsScreen(),
      ),
    );
  }
}
