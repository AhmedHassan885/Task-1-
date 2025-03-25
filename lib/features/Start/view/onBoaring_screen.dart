// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/features/Auth/view/choose_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const Choose()));
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return SvgPicture.asset(assetName, width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    var pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.125,
      ),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: TextButton(
              onPressed: () {
                _onIntroEnd(context);
              },
              child: Text(
                AppStrings.skip_text_btn,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
            ),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: AppStrings.onboarding1_title_text,
          body:
          AppStrings.onBoarding_desc_text,

          image: _buildImage(AppAssets.onboarding1_image),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: AppStrings.onboarding2_title_text,
          body:
             AppStrings.onBoarding_desc_text,
          image: _buildImage(AppAssets.onboarding2_image),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: AppStrings.onboarding3_title_text,
          body:
             AppStrings.onBoarding_desc_text,
          image: _buildImage(AppAssets.onboarding3_image),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () {}, // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,

      //rtl: true, // Display as right-to-left
      back: const Text(AppStrings.perv_text_btn,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color(0xffC4C4C4))),
      //skip:
      next: const Text(AppStrings.next_text_btn,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: AppColors.pink_color)),
      done: const Text(AppStrings.getStarted_text_btn,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: AppColors.pink_color)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(40.0, 8.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onBackToIntro(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnBoardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("This is the screen after Introduction"),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _onBackToIntro(context),
              child: const Text('Back to Introduction'),
            ),
          ],
        ),
      ),
    );
  }
}
