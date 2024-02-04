import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';

class ResultsExpression extends StatelessWidget {
  final int score;

  const ResultsExpression({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    var isGoodScore = score > 79;
    var pathAsset = (isGoodScore)
        ? 'assets/images/congrats.svg'
        : 'assets/images/condolences.svg';
    var text = (isGoodScore) ? 'Congrats !!!' : 'Condolences :(';
    double isCongrats = (isGoodScore) ? defaultPadding : 100;

    return Column(
      children: [
         SizedBox(height: isCongrats),
        WebsafeSvg.asset(
          pathAsset,
          width: 150,
        ),
        const SizedBox(height: defaultPadding),
        StyledText(
          text: text,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
