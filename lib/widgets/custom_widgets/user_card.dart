import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sixdreams_machine_test/constants/colors/colors.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/customtext.dart';

class UserCard extends StatelessWidget {
  UserCard(
      {super.key,
      required this.username,
      required this.time,
      required this.amount,
      required this.amountcolor});
  final String username;
  final String time;
  final String amount;
  final Color amountcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(color: Appcolor.secondaryclr,borderRadius: BorderRadius.circular(10)),
    
      child: ListTile(
        title: Customtext(
          content: username,
          fontsize: 12,
          fontweight: FontWeight.w500,
        ),
        subtitle: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Today | ',
              style: GoogleFonts.poppins(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                  fontWeight: FontWeight.w400)),
          TextSpan(
              text: time,
              style: GoogleFonts.poppins(
                  color: Color(0xffA2A2A2),
                  fontSize: 10,
                  fontWeight: FontWeight.w400))
        ])),
        trailing: Customtext(
          content: amount,
          fontsize: 16,
          fontweight: FontWeight.w500,
          clr: amountcolor,
        ),
      ),
    );
  }
}
