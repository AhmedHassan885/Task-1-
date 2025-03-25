// ignore_for_file: deprecated_member_use

import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/core/widgets/default_button.dart';
import 'package:course/features/cart/view/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.checkout_text_btn,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(AppAssets.arrow_back_icon),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppAssets.location_icon),
                SizedBox(
                  width: 3,
                ),
                Text(
                  AppStrings.delivery_text,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  width: 300,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.address_text,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        AppStrings.address_desc_text,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 95,
                  width: 105,
                  decoration: BoxDecoration(
                    color: AppColors.pink_color,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      AppAssets.location_icon,
                      color: AppColors.white,
                      width: 60,
                      height: 60,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            const Text(AppStrings.shopping_list_text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            CartItem(
              imageUrl: AppAssets.womens_wear_image,
              title: AppStrings.womens_wear_text,
              rating: AppStrings.rate_8_text,
              price: AppStrings.price_product34_text,
              oldPrice: AppStrings.old_price64_text,
              quantity: 1, showRow: false,
            ),
            CartItem(
              imageUrl: AppAssets.mens_jacket_image,
              title: AppStrings.mens_wear_text,
              rating: AppStrings.rate_7_text,
              price: AppStrings.price_product45_text,
              oldPrice: AppStrings.old_price67_text,
              quantity: 1, showRow: false,
            ),
            SizedBox(
              height: 50,
            ),
            DefaultButton(
                btn_color: AppColors.pink_color,
                text_btn_color: AppColors.white,
                H_padding: 163,
                V_padding: 13,
                onPressed: () {},
                btn: Text(
                  AppStrings.placeholder_text,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                btn_border_color: AppColors.pink_color)
          ],
        ),
      ),
    );
  }
}
