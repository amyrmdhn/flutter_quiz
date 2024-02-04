import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';
import '../../models/question.dart';

import 'components/answer_button.dart';
import 'components/question_text.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;

  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    setState(() {
      widget.onSelectAnswer(answer);
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
                      answerQuestion: () {
                        answerQuestion(answer);
                      },
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
