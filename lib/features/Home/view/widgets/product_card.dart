// ignore_for_file: avoid_print

import 'package:course/core/helper/my_navigator.dart';
import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/features/Home/view/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(context, screen: Product());
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Center(
                child: Image.asset(
                  AppAssets.Tt_shirt_image,
                  fit: BoxFit.fill,
                  width: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.image_title_text,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(AppStrings.image_desc_text,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400)),
                  SizedBox(height: 5),
                  Text(AppStrings.price_text,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 15,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(width: 5),
                      Text(AppStrings.num_rating_text,
                          style: TextStyle(
                              fontSize: 10, color: AppColors.num_rating_color)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
