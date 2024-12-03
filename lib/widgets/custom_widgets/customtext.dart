import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sixdreams_machine_test/constants/colors/colors.dart';

class Customtext extends StatelessWidget {
  Customtext(
      {super.key,
      required this.content,
      this.fontsize,
      this.fontweight,
      this.clr});
  final String content;
  final double? fontsize;
  final FontWeight? fontweight;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: GoogleFonts.poppins(
          fontSize: fontsize ?? 14,
          fontWeight: fontweight ?? FontWeight.w400,
          color: clr ?? Appcolor.whiteclr),
    );
  }
}
