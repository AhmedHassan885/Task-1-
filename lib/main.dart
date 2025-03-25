import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/features/Auth/manager/cubit/Auth_cubit.dart';
import 'package:course/features/Start/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => AuthCubit(),
      child: GetMaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: AppColors.white),
            fontFamily: "Montserrat",
            scaffoldBackgroundColor: AppColors.white),
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}
