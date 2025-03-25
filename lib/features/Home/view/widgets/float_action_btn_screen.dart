import 'package:course/core/helper/my_navigator.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/features/cart/view/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FloatActionBtnScreen extends StatelessWidget {
  const FloatActionBtnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: AppColors.pink_color,
      child: IconButton(
          onPressed: () {
            navigateTo(context, screen: CartScreen());
          },
          icon: SvgPicture.asset(
            AppAssets.floatAction_icon,
            width: 30,
            height: 30,
          )),
    );
  }
}
