import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/features/cart/view/widgets/cart_item.dart';
import 'package:course/features/cart/view/widgets/detail_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompletedOeder extends StatelessWidget {
  const CompletedOeder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.cart_text,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.order_num_text,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        )),
                    Text(
                      AppStrings.date_text,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    )
                  ],
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.completed_text,
                      style: TextStyle(
                          color: AppColors.pink_color,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            const SizedBox(height: 12),
            CartItem(
              imageUrl: AppAssets.womens_wear_image,
              title: AppStrings.womens_wear_text,
              rating: AppStrings.rate_8_text,
              price: AppStrings.price_product34_text,
              oldPrice: AppStrings.old_price64_text,
              quantity: 1,
              showRow: false,
            ),
            CartItem(
              imageUrl: AppAssets.mens_jacket_image,
              title: AppStrings.mens_wear_text,
              rating: AppStrings.rate_7_text,
              price: AppStrings.price_product45_text,
              oldPrice: AppStrings.old_price67_text,
              quantity: 1,
              showRow: false,
            ),
            const SizedBox(height: 16),
            const Divider(),
            PriceDetailRow(
              title: AppStrings.subtotal_text,
              value: AppStrings.subtotal_price_text,
            ),
            PriceDetailRow(
                title: AppStrings.tax_text, value: AppStrings.tax_price_text),
            PriceDetailRow(
                title: AppStrings.delivery_fee_text,
                value: AppStrings.delivery_price_fee_text),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: PriceDetailRow(
                title: AppStrings.ordertotal_text,
                value: AppStrings.ordertotal_price_text,
                isTotal: true,
              ),
            ),
            SizedBox(
              height: 7,
            ),
          ],
        ),
      ),
    );
  }
}
