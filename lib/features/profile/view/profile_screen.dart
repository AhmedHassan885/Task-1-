import 'package:course/core/helper/my_navigator.dart';
import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/features/Auth/manager/cubit/Auth_cubit.dart';
import 'package:course/features/Auth/manager/cubit/Auth_satate.dart';
import 'package:course/features/Auth/view/choose_screen.dart';
import 'package:course/features/orders/view/my_orders_screen.dart';
import 'package:course/features/profile/view/my_fav_screen.dart';
import 'package:course/features/profile/view/my_profile_screen.dart';
import 'package:course/features/profile/view/settings_screen.dart';
import 'package:course/features/profile/view/widgets/default_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      AuthCubit.get(context).getUser();
      return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(AppStrings.profile_title_text),
            centerTitle: true,
          ),
          body: Column(children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(AppAssets.profiile_image),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is GetUserSuccess) {
                  return Text(
                    state.username,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.pink_color),
                  );
                }
                return Text(
                  AppStrings.user_full_name_text,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.pink_color),
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            DefualtContainer(
              prefix: AppAssets.my_profile_icon,
              name: AppStrings.my_profile_text,
              arrow: AppAssets.arrow_right_icon,
              destination: MyProfileScreen(),
            ),
            SizedBox(
              height: 30,
            ),
            DefualtContainer(
              prefix: AppAssets.my_orders_icon,
              name: AppStrings.my_orders_text,
              arrow: AppAssets.arrow_right_icon,
              destination: MyOrdersScreen(),
            ),
            SizedBox(
              height: 30,
            ),
            DefualtContainer(
              prefix: AppAssets.my_fav_icon,
              name: AppStrings.my_fav_text,
              arrow: AppAssets.arrow_right_icon,
              destination: MyFavourite(),
            ),
            SizedBox(
              height: 30,
            ),
            DefualtContainer(
              prefix: AppAssets.settings_icon,
              name: AppStrings.settings_text,
              arrow: AppAssets.arrow_right_icon,
              destination: SettingsScreen(),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Divider(
                color: AppColors.pink_color,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, screen: Choose());
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SvgPicture.asset(AppAssets.logOut_icon),
                    SizedBox(
                      width: 10,
                    ),
                    Text(AppStrings.log_out_text,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          ]));
    });
  }
}
