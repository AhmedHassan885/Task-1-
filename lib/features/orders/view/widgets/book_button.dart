import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 145,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: AppColors.pink_color),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}