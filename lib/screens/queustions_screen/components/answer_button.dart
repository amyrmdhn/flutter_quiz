import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import 'answer_text.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final String char;
  final void Function() answerQuestion;

  const AnswerButton({
    super.key,
    required this.answer,
    required this.char,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50.0,
      margin: const EdgeInsets.only(bottom: defaultPadding / 1.5),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.0),
        child: InkWell(
          splashColor: splashColor,
          splashFactory: InkRipple.splashFactory,
          borderRadius: BorderRadius.circular(20.0),
          onTap: answerQuestion,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding / 1.2,
                ),
                child: Text(
                  char,
                  style: GoogleFonts.lato(
                    color: greyColor,
                  ),
                ),
              ),
              const VerticalDivider(
                color: greyColor,
                width: 0,
              ),
              Flexible(
                child: AnsweredText(
                  text: answer,
                  padding: defaultPadding / 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
