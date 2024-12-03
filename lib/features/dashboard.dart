import 'package:flutter/material.dart';
import 'package:sixdreams_machine_test/constants/colors/colors.dart';
import 'package:sixdreams_machine_test/constants/sizedbox/sizedbox.dart';
import 'package:sixdreams_machine_test/features/profile_screen.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/card_container.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/customtext.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/dashboard_frame.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sbheight(40),
            Container(
              height: 56,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: Appcolor.secondaryclr,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (cxt)=>ProfileScreen()));
                },
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/profile_pic.png"))),
                ),
                title: Customtext(content: 'John Deo'),
                trailing: Customtext(
                  content: 'My Profile',
                  fontsize: 16,
                  fontweight: FontWeight.w500,
                ),
              ),
            ),
            Sizebox.normalheightbox,
            const DashboardFrame(),
            Sizebox.normalheightbox,
            Container(
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Appcolor.secondaryclr,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Appcolor.borderclr,
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Customtext(
                      content: 'From',
                      fontweight: FontWeight.w500,
                      clr: Appcolor.whiteclr.withOpacity(0.2),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 1,
                          height: 24,
                          color: Appcolor.whiteclr.withOpacity(0.2),
                        ),
                        sbwidth(8),
                        Customtext(
                          content: 'To',
                          fontweight: FontWeight.w500,
                          clr: Appcolor.whiteclr.withOpacity(0.2),
                        ),
                      ],
                    ),
                    Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Appcolor.primaryclr,
                      ),
                      child: Image.asset(
                        'assets/icon_search.png',
                        height: 20,
                        width: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Sizebox.normalheightbox,
            Customtext(
              content: 'Quick Stats',
              fontsize: 20,
              clr: Appcolor.thirdclr,
            ),
            Sizebox.normalheightbox,
            Row(
              children: [
                Flexible(
                  child: Cardcontainer(
                      imageurl: 'assets/icon_add_user.png',
                      value: "12,345",
                      content: "Customers"),
                ),
                Sizebox.normalwidthbox,
                Flexible(
                  child: Cardcontainer(
                      imageurl: 'assets/icon_wallet.png',
                      value: "₹8,765",
                      content: "Current Amount"),
                )
              ],
            ),
            Sizebox.normalheightbox,
            Cardcontainer(
                imageurl: 'assets/icon_cricket.png',
                value: '₹654',
                content: 'Earned from Cricket'),
            Sizebox.normalheightbox,
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 54,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Appcolor.primaryclr,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Customtext(
                      content: 'Copy Refer Link',
                      fontsize: 12,
                      fontweight: FontWeight.w600,
                    ),
                    sbwidth(5),
                    Image.asset(
                      'assets/icon_copy.png',
                      height: 14,
                      width: 11.79,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
