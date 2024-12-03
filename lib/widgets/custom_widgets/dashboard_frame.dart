import 'package:flutter/material.dart';
import 'package:sixdreams_machine_test/constants/colors/colors.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/customtext.dart';

class DashboardFrame extends StatelessWidget {
  const DashboardFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/dashboard_frame.png'))),
            child: Stack(
              children: [
                Positioned(
                  top: 23,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Customtext(
                        content: 'Sparkle This Diwali with Six Dreams',
                        fontsize: 10,
                        fontweight: FontWeight.w500,
                      ),
                      Customtext(
                        content: 'Double Your Earnings!',
                        fontsize: 20,
                        fontweight: FontWeight.w700,
                      ),
                      Customtext(
                        content: 'Earn Double Commissions on Every Referral!',
                        fontsize: 10,
                        fontweight: FontWeight.w500,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Container(
                          height: 30,
                          width: 99,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Appcolor.whiteclr),
                              alignment: Alignment.center,
                          child: Customtext(
                            content: 'Let’s Start',
                            fontsize: 12,
                            clr: const Color(0xff1C1C1C),
                            fontweight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
  }
}