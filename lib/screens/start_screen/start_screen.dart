import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '/constants.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset(
          'assets/images/bg.svg',
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  Image.asset(
                    'assets/images/quiz-logo.png',
                    width: 300,
                    color: greyColor,
                  ),
                  const Spacer(),
                  Text(
                    'Having fun learning Flutter by Quiz!',
                    style: GoogleFonts.lato(
                      color: greyColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          foregroundColor: greyColor,
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(defaultPadding),
                          )),
                      icon: const Icon(Icons.arrow_right_alt),
                      label: Text(
                        'Let\'s Start',
                        style: GoogleFonts.lato(
                          color: greyColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
