import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/core/widgets/default_button.dart';
import 'package:course/core/widgets/default_formfield.dart';
import 'package:course/features/profile/manager/cubit/profile_cubit.dart';
import 'package:course/features/profile/manager/cubit/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: SvgPicture.asset(AppAssets.arrow_back_icon)),
            title: Text(AppStrings.profile_title_text),
            centerTitle: true,
          ),
          body: Builder(builder: (context) {
            return Form(
              key: ProfileCubit.get(context).formkey,
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: SizedBox(
                    width: 100,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage:
                                AssetImage(AppAssets.profiile_image),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      CustomTextField(
                          controller:
                              ProfileCubit.get(context).update_name_controller,
                          labelText: AppStrings.full_name_Htext,
                          prefix: AppAssets.person_icon),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                          keyboardType: TextInputType.phone,
                          controller:
                              ProfileCubit.get(context).update_phone_controller,
                          labelText: AppStrings.phone_Htext,
                          prefix: AppAssets.phone_icon),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
                BlocConsumer<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    if (state is UpdateProfileLoading) {
                      return CircularProgressIndicator();
                    } else {
                      return DefaultButton(
                        btn_color: AppColors.pink_color,
                        text_btn_color: AppColors.white,
                        H_padding: 170,
                        V_padding: 15,
                        onPressed: () {
                          ProfileCubit.get(context).updateProfile();
                        },
                        btn: Text(
                          AppStrings.save_btn,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        btn_border_color: AppColors.pink_color,
                      );
                    }
                  },
                  listener: (context, state) {
                    if (state is UpdateProfileSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message),
                        backgroundColor: Colors.green,
                      ));
                    } else if (state is UpdateProfileError) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(state.errorMessage),
                            backgroundColor: Colors.red),
                      );
                    }
                  },
                ),
              ]),
            );
          })),
    );
  }
}
