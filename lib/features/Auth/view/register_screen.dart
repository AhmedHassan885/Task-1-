// ignore_for_file: avoid_print

import 'package:course/core/helper/my_navigator.dart';
import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/core/widgets/default_button.dart';
import 'package:course/core/widgets/default_formfield.dart';
import 'package:course/features/Auth/manager/cubit/Auth_cubit.dart';
import 'package:course/features/Auth/manager/cubit/Auth_satate.dart';
import 'package:course/features/Auth/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              AppStrings.registerPage_text,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    controller: AuthCubit.get(context).name_Controller,
                    labelText: AppStrings.full_name_Htext,
                    prefix: AppAssets.person_icon,
                  ),
                  CustomTextField(
                      keyboardType: TextInputType.phone,
                      controller: AuthCubit.get(context).phone_Controller,
                      labelText: AppStrings.phone_Htext,
                      prefix: AppAssets.phone_icon),
                  CustomTextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: AuthCubit.get(context).email_Controller,
                    labelText: AppStrings.email_Htext,
                    prefix: AppAssets.email_icon,
                  ),
                  CustomTextField(
                    isPassword: true,
                    controller: AuthCubit.get(context).password_Controller,
                    labelText: AppStrings.password_Htext,
                    prefix: AppAssets.lock_icon,
                  ),
                  CustomTextField(
                    isPassword: true,
                    controller:
                        AuthCubit.get(context).confirm_password_Controller,
                    labelText: AppStrings.confirm_password_Htext,
                    prefix: AppAssets.lock_icon,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "By clicking the Register button, you agree \nto the public offer",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff676767)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    builder: (context, state) {
                      if (state is RegisterLoadingState) {
                        return CircularProgressIndicator();
                      } else {
                        return Center(
                          child: DefaultButton(
                            btn_color: AppColors.pink_color,
                            text_btn_color: AppColors.white,
                            H_padding: 120,
                            V_padding: 15,
                            onPressed: () {
                              AuthCubit.get(context).onRegister();
                            },
                            btn: Text(
                              AppStrings.create_account_btn,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            btn_border_color: AppColors.pink_color,
                          ),
                        );
                      }
                    },
                    listener: (context, state) {
                      print(state.toString());
                      if (state is RegisterSuccessState) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(state.msg)));
                        navigateTo(context, screen: Login());
                      } else if (state is RegisterErrorState) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(state.error),
                        ));
                      }
                    },
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
