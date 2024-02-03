import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';

class ResultsExpression extends StatelessWidget {
  const ResultsExpression({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: defaultPadding),
        WebsafeSvg.asset(
          'assets/images/congrats.svg',
          width: 150,
        ),
        const SizedBox(height: defaultPadding),
        const StyledText(
          text: 'Congrats!!!',
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
