import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xFFFFBC02);
const greenColor = Color(0xFF6AC259);
const greyColor = Color(0xFFDCDCDC);
const blueCOlor = Color(0xFF1D70AE);
const splashColor = Colors.black12;

const answerButtonColor = [
  Color(0xFF93002C),
  Color(0xFF1A9494),
  Color(0xFFA3DE68),
  Color(0xFF8454EB),
  Color(0xFF26AFFC),
  Color(0xFFFDEB49),
  Color(0xFFD65C16),
];

const defaultPadding = 20.0;

class StyledText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final double padding;

  const StyledText({
    super.key,
    required this.text,
    this.padding = 0,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding,
      ),
      child: Text(
        text,
        style: GoogleFonts.lato(
          color: greyColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
