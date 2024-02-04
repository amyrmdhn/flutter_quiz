import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/queustions_screen/components/question_text.dart';

import 'package:websafe_svg/websafe_svg.dart';

import '../../models/question.dart';
import '../../constants.dart';

import 'components/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 5;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];

    return Stack(
      children: [
        WebsafeSvg.asset(
          'assets/images/bg.svg',
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  const Spacer(flex: 2),
                  StyledText(
                    text:
                        'Question ${currentQuestionIndex + 1}/${questions.length}',
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                  QuestionText(
                    text: currentQuestion.question,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  ...currentQuestion.shuffeledAnswers.indexedMap(
                    (answer, index) => AnswerButton(
                      answer: answer,
                      char: currentQuestion.alphabets[index],
                      answerQuestion: answerQuestion,
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
