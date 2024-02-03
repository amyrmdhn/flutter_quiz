import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import 'answer_text.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 50.0,
      margin: const EdgeInsets.only(bottom: defaultPadding / 1.5),
      decoration: BoxDecoration(
        color: answerButtonColor[0],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.0),
        child: InkWell(
          splashColor: splashColor,
          splashFactory: InkRipple.splashFactory,
          borderRadius: BorderRadius.circular(20.0),
          onTap: () {},
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                child: Text(
                  'A',
                  style: GoogleFonts.lato(
                    color: greyColor,
                  ),
                ),
              ),
              const VerticalDivider(color: greyColor),
              const AnsweredText(
                text: '2 Types',
                padding: defaultPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
