import 'package:flutter/material.dart';
import 'package:sixdreams_machine_test/constants/colors/colors.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/customtext.dart';

class Cardcontainer extends StatelessWidget {
  Cardcontainer(
      {super.key,
      required this.imageurl,
      required this.value,
      required this.content});

  final String imageurl;
  final String value;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Appcolor.borderclr)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imageurl,
                  height: 20,
                  width: 20,
                ),
                Image.asset(
                  'assets/icon_arrow_rght.png',
                  height: 20,
                  width: 20,
                )
              ],
            ),
            Customtext(
              content: value,
              fontsize: 20,
              fontweight: FontWeight.w700,
              clr: Appcolor.thirdclr,
            ),
            Customtext(
              content: content,
              fontsize: 14,
              fontweight: FontWeight.w400,
              clr: Appcolor.thirdclr,
            )
          ],
        ),
      ),
    );
  }
}
