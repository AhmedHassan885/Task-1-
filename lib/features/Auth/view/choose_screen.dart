import 'package:course/core/helper/my_navigator.dart';
import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/core/widgets/default_button.dart';
import 'package:course/features/Auth/view/login_screen.dart';
import 'package:course/features/Auth/view/register_screen.dart';
import 'package:flutter/material.dart';

class Choose extends StatelessWidget {
  const Choose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            AppAssets.choose_image,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withAlpha(255),
                  Colors.black.withAlpha(0),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    AppStrings.choose_text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  AppStrings.choose2_text,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF2F2F2)),
                ),
                SizedBox(
                  height: 20,
                ),
                DefaultButton(
                  btn_color: AppColors.pink_color,
                  text_btn_color: AppColors.white,
                  H_padding: 110,
                  V_padding: 10,
                  onPressed: () {
                    navigateTo(context, screen: Login());
                  },
                  btn: Text(
                    AppStrings.login_btn,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  btn_border_color: AppColors.pink_color,
                ),
                SizedBox(
                  height: 15,
                ),
                DefaultButton(
                  btn_color: AppColors.white,
                  text_btn_color: AppColors.pink_color,
                  H_padding: 95,
                  V_padding: 10,
                  onPressed: () {
                    navigateTo(context, screen: RegisterScreen());
                  },
                  btn: Text(
                    AppStrings.register_btn,
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: AppColors.pink_color),
                  ),
                  btn_border_color: AppColors.pink_color,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
