// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:flutter/material.dart';

class TabbarView extends StatelessWidget {
  const TabbarView({super.key, required this.showButton, this.text, required this.onpressed});

  final bool showButton;
  final String? text;
final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: onpressed,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: const Offset(2, 2)),
            ],
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(
                  AppAssets.Tt_shirt_image,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Mens Starry",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            "\$50",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Text(
                            "15/05/2005 1:30 pm",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          const Spacer(),
                          const Text("1 item"),
                        ],
                      ),
                      const SizedBox(height: 20),
                      showButton
                          ? Row(
                              children: [
                                ElevatedBtn(text: AppStrings.cancel_text),
                                const SizedBox(width: 8),
                                ElevatedBtn(text: AppStrings.track_text),
                              ],
                            )
                          : Text(
                              text ?? "✅ Order Delivered",
                              style: TextStyle(
                                  color: AppColors.pink_color,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 120,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          backgroundColor: AppColors.pink_color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
