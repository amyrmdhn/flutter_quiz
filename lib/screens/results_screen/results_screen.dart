import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/queustions_screen/components/answer_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';
import 'components/results_card.dart';
import 'components/results_expression.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const Column(
                    children: [
                      // TODO: tambahkan logic untuk menampilkan teks "Condolences :(" jika score < 75%
                      ResultsExpression(),
                      StyledText(
                        text: '85% Score',
                        color: greenColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: defaultPadding / 2),
                      StyledText(
                        text: 'Quiz completed successfully.',
                        fontSize: 16.0,
                      ),
                      SizedBox(height: defaultPadding),
                      // TODO: tambahkan logic untuk menampilkan aktual text
                      StyledText(
                        text:
                            'You attempt 6 questions and and from that 5 answers is correct.',
                        padding: defaultPadding,
                        fontSize: 16.0,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  // TODO: Tambahkan logic untuk Try again!
                  ElevatedButton.icon(
                    onPressed: () {},
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
