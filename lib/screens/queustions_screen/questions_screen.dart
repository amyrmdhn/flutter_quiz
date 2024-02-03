import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/queustions_screen/components/question_text.dart';


import 'package:websafe_svg/websafe_svg.dart';

import 'components/answer_button.dart';
import '../../constants.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset(
          'assets/images/bg.svg',
          fit: BoxFit.fill,
        ),
        const SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(flex: 2),
                  StyledText(
                    text: 'Question 1/6',
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  QuestionText(
                    text: 'How many types of widgets are there in Flutter?',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  AnswerButton(),
                  AnswerButton(),
                  AnswerButton(),
                  AnswerButton(),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
