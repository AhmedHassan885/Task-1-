// ignore_for_file: unnecessary_string_escapes, deprecated_member_use

import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/features/Home/view/home_screen.dart';
import 'package:course/features/Home/view/items_screen.dart';
import 'package:course/features/Home/view/widgets/float_action_btn_screen.dart';
import 'package:course/features/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottonNavBtn extends StatefulWidget {
  const BottonNavBtn({super.key});

  @override
  State<BottonNavBtn> createState() => _BottonNavBtnState();
}

class _BottonNavBtnState extends State<BottonNavBtn> {
  int navBarCurrentIndex = 0;
  List<Widget> screens = [HomeScreen(), ShopScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatActionBtnScreen(),
      // 🔹 Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            navBarCurrentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.home_icon,
              color:
                  navBarCurrentIndex == 0 ? AppColors.pink_color : Colors.black,
            ),
            label: AppStrings.home_screen_text,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.items_icon,
              color:
                  navBarCurrentIndex == 1 ? AppColors.pink_color : Colors.black,
            ),
            label: AppStrings.items_screen_text,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.my_profile_icon,
              color:
                  navBarCurrentIndex == 2 ? AppColors.pink_color : Colors.black,
            ),
            label: AppStrings.profile_screen_text,
          ),
        ],
      ),
      body: screens[navBarCurrentIndex],
    );
  }
}
