// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:course/core/helper/my_navigator.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/features/Start/view/onBoaring_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      navigateTo(context, screen: OnBoardingPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset(AppAssets.splash_image)),
        ],
      ),
    );
  }
}
