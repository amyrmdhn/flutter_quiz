import 'package:flutter/material.dart';
import 'package:flutter_quiz/models/question.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';
import '../../models/summary_quiz.dart';

import 'components/results_card.dart';
import 'components/results_detail.dart';
import 'components/results_expression.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> choosenAnswer;
  final void Function() onRestart;

  const ResultsScreen({
    super.key,
    required this.choosenAnswer,
    required this.onRestart,
  });

  List<SummaryQuiz> get summaryQuiz {
    List<SummaryQuiz> summary = [];

    for (int i = 0; i < choosenAnswer.length; i++) {
      summary.add(
        SummaryQuiz(
          correctAnswer: questions[i].answers[0],
          choosenAnswer: choosenAnswer[i],
        ),
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numCorrectAnswer = summaryQuiz
        .where((summary) => summary.choosenAnswer == summary.correctAnswer)
        .length;
    final score = ((numCorrectAnswer / questions.length) * 100).toInt();

    return Stack(
      children: [
        WebsafeSvg.asset(
          'assets/images/bg.svg',
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Center(
            child: ResultsCard(
              child: Stack(
                alignment: const Alignment(0, 1.1),
                children: [
                  Column(
                    children: [
                      ResultsExpression(score: score),
                      StyledText(
                        text: '$score% Score',
                        color: greenColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      const StyledText(
                        text: 'Quiz completed successfully.',
                        fontSize: 16.0,
                      ),
                      const SizedBox(height: defaultPadding),
                       ResultsDetail(numCorrectAnswer: numCorrectAnswer),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: onRestart,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blueColor,
                      foregroundColor: Colors.white,
                      elevation: 6.0,
                      shadowColor: greyColor,
                    ),
                    icon: const Icon(Icons.restart_alt),
                    label: const StyledText(text: 'Try Again!'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

