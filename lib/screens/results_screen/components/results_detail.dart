import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../models/question.dart';

class ResultsDetail extends StatelessWidget {
  final int numCorrectAnswer;

  const ResultsDetail({
    super.key,
    required this.numCorrectAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Text.rich(
        TextSpan(
          text: 'You attempt ',
          style: GoogleFonts.lato(
            fontSize: 16.0,
            color: greyColor,
          ),
          children: [
            TextSpan(
              text: '${questions.length} questions ',
              style: GoogleFonts.lato(
                fontSize: 16.0,
                color: blueColor,
              ),
            ),
            TextSpan(
              text: 'and from that ',
              style: GoogleFonts.lato(
                fontSize: 16.0,
                color: greyColor,
              ),
            ),
            TextSpan(
              text: '$numCorrectAnswer answers ',
              style: GoogleFonts.lato(
                fontSize: 16.0,
                color: greenColor,
              ),
            ),
            TextSpan(
              text: 'is correct.',
              style: GoogleFonts.lato(
                fontSize: 16.0,
                color: greyColor,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
