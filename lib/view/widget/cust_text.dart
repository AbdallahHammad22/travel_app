import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  final Alignment alignment;
  final FontWeight weight;

  const CustomText({
    super.key,
    this.text = '',
    this.fontsize = 16,
    this.color = Colors.black,
    this.weight = FontWeight.normal,
    this.alignment = Alignment.topLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: GoogleFonts.alata(
          textStyle: TextStyle(
            fontSize: fontsize,
            color: color,
            fontWeight: weight,
          ),
        ),
      ),
    );
  }
}
