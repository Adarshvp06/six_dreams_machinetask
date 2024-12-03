

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sixdreams_machine_test/constants/colors/colors.dart';
import 'package:sixdreams_machine_test/constants/sizedbox/sizedbox.dart';
import 'package:sixdreams_machine_test/data/userdata.dart';
import 'package:sixdreams_machine_test/provider/profilestate_provider.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/customtext.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/number_card.dart';
import 'package:sixdreams_machine_test/widgets/custom_widgets/user_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    if (_scrollController.offset > 50 && !Provider.of<ProfileStateprovider>(context, listen: false).isExpanded) {
      Provider.of<ProfileStateprovider>(context, listen: false).toggleExpanded();
    } else if (_scrollController.offset <= 50 && Provider.of<ProfileStateprovider>(context, listen: false).isExpanded) {
      Provider.of<ProfileStateprovider>(context, listen: false).toggleExpanded();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'assets/icon_arrow_back.png',
            height: 16.5,
            width: 9,
          ),
        ),
        title: Customtext(content: 'My Profile', fontsize: 18),
      ),
      body: Consumer<ProfileStateprovider>(
        builder: (context, profileState, child) {
          return SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: profileState.isExpanded
                        ? Container(
                            decoration: BoxDecoration(
                                color: Appcolor.secondaryclr,
                                borderRadius: BorderRadius.circular(10)),
                            height: 70,
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 48,
                                        width: 48,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage('assets/profile_pic.png'),
                                          ),
                                        ),
                                      ),
                                      sbwidth(10),
                                      Customtext(
                                        content: 'John Deo',
                                        fontsize: 20,
                                        fontweight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      NumberCard(
                                          fontsizevalue: 12,
                                          fontsizecontent: 8,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          value: '12,345',
                                          content: 'Customers',
                                          height: 50,
                                          width: 80,
                                          radius: BorderRadius.circular(10)),
                                      sbwidth(10),
                                      NumberCard(
                                          fontsizevalue: 12,
                                          fontsizecontent: 8,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          value: '₹8,765',
                                          content: 'Current Amount',
                                          height: 50,
                                          width: 80,
                                          radius: BorderRadius.circular(10)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              Container(
                                height: 122,
                                width: 122,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/profile_pic.png'),
                                  ),
                                ),
                              ),
                              sbheight(10),
                              Customtext(
                                content: 'John Deo',
                                fontsize: 20,
                                fontweight: FontWeight.w600,
                              ),
                            ],
                          ),
                  ),
                  Sizebox.normalheightbox,
                  Row(
                    children: [
                      Flexible(
                        child: NumberCard(value: '12,345', content: 'Customers'),
                      ),
                      Sizebox.normalwidthbox,
                      Flexible(
                        child: NumberCard(value: '₹8,765', content: 'Current Amount'),
                      ),
                    ],
                  ),
                  sbheight(20),
                  Customtext(
                    content: 'Joined Users',
                    fontweight: FontWeight.w500,
                  ),
                  Sizebox.normalheightbox,
                  ListView.separated(
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      return UserCard(
                        username: username[index],
                        time: time[index],
                        amount: amount[index],
                        amountcolor: colors[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return sbheight(10);
                    },
                    itemCount: username.length,
                    shrinkWrap: true,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
