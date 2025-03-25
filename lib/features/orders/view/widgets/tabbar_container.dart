// ignore_for_file: unnecessary_nullable_for_final_variable_declarations

import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:flutter/material.dart';

class TabbarContainer extends StatelessWidget {
  final String text;
  final int index;

  const TabbarContainer({super.key, required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    final TabController? tabController = DefaultTabController.of(context);

    return AnimatedBuilder(
      animation: tabController!,
      builder: (context, child) {
        bool isActive = tabController.index == index;
        return Center(
          child: Container(
            width: 112,
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isActive ? AppColors.pink_color : const Color(0xffFFCCD5),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: isActive ? Colors.white : AppColors.pink_color,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
