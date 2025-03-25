// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, sort_child_properties_last, library_private_types_in_public_api, non_constant_identifier_names

import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/features/profile/view/widgets/langContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isArabic = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppStrings.settings_text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(AppAssets.arrow_back_icon),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.languadge_text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            ToggleButtons(
              renderBorder: false,
              borderRadius: BorderRadius.circular(6),
              constraints: BoxConstraints(minHeight: 35),
              isSelected: [isArabic, !isArabic],
              onPressed: (index) {
                setState(() {
                  isArabic = index == 0;
                });
              },
              children: [
                LangContainer(
                    Arabic: isArabic, lang: AppStrings.arabic_lang_text),
                LangContainer(
                    Arabic: !isArabic, lang: AppStrings.english_lang_text),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
