import 'package:flutter/material.dart';
import 'package:sixdreams_machine_test/constants/colors/colors.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/customtext.dart';

class NumberCard extends StatelessWidget {
   NumberCard({super.key, required this.value, required this.content, this.height, this.width, this.padding, this.radius, this.fontsizecontent, this.fontsizevalue});
final String value;
final String content;
final double? height;
final double? width;
final EdgeInsetsGeometry ? padding;
final BorderRadiusGeometry? radius;
final double? fontsizecontent;
final double?fontsizevalue;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? 116,
      width:width?? double.infinity,
      decoration: BoxDecoration(
          borderRadius:radius?? BorderRadius.circular(22),
          border: Border.all(color: Appcolor.borderclr)),
      child: Padding(
        
        padding:padding?? const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          
            Customtext(
              content: value,
              fontsize:fontsizevalue?? 20,
              fontweight: FontWeight.w700,
              clr: Appcolor.thirdclr,
            ),
            Customtext(
              content: content,
              fontsize:fontsizecontent?? 14,
              fontweight: FontWeight.w400,
              clr: Appcolor.thirdclr,
            )
          ],
        ),
      ),
    );
  }
}