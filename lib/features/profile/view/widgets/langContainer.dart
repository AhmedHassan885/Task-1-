// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, file_names

import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:flutter/material.dart';

class LangContainer extends StatelessWidget {
  const LangContainer({super.key, required this.Arabic, required this.lang});

  final bool Arabic;
  final String lang;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 1),
      child: Text(lang,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Arabic ? Colors.white : Colors.black)),
      decoration: BoxDecoration(
        color: Arabic ? AppColors.pink_color : AppColors.pink_light_color,
      ),
    );
  }
}
