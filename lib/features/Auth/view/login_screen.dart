import 'package:course/core/helper/my_navigator.dart';
import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/core/widgets/default_button.dart';
import 'package:course/core/widgets/default_formfield.dart';
import 'package:course/features/Auth/manager/cubit/Auth_cubit.dart';
import 'package:course/features/Auth/manager/cubit/Auth_satate.dart';
import 'package:course/features/Home/view/widgets/bottom_nav_bar_screen.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: SvgPicture.asset(AppAssets.arrow_back_icon)),
            SizedBox(
              height: 8,
            ),
            Text(
              AppStrings.loginPage_text,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomTextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: AuthCubit.get(context).login_email_Controller,
                    labelText: AppStrings.email_Htext,
                    prefix: AppAssets.email_icon,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    isPassword: true,
                    controller:
                        AuthCubit.get(context).login_password_Controller,
                    labelText: AppStrings.password_Htext,
                    prefix: AppAssets.lock_icon,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  BlocListener<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is LoginSuccessState) {
                        navigateTo(context, screen: BottonNavBtn());
                      } else if (state is LoginErrorState) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(state.error)));
                      }
                    },
                    child: Center(
                      child: DefaultButton(
                        btn_color: AppColors.pink_color,
                        text_btn_color: AppColors.white,
                        H_padding: 170,
                        V_padding: 12,
                        onPressed: () {
                          AuthCubit.get(context).onLogin();
                        },
                        btn: Text(
                          AppStrings.login_btn,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        btn_border_color: AppColors.pink_color,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }));
  }
}
