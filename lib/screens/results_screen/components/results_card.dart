import 'package:flutter/material.dart';

import '../../../constants.dart';

class ResultsCard extends StatelessWidget {
  final Widget child;

  const ResultsCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Container(
        width: 300,
        height: 520,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(defaultPadding),
          boxShadow: const [
            BoxShadow(
              color: greyColor,
              offset: Offset(.0, 1),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
