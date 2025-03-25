// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/core/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int quantity = 1;
  int pricePerItem = 100;
  int totalPrice = 100;

  void increaseQuantity() {
    setState(() {
      quantity++;
      totalPrice = quantity * pricePerItem;
    });
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
        totalPrice = quantity * pricePerItem;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(AppStrings.product_text,
            style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(AppAssets.arrow_back_icon),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      AppAssets.Tt_shirt_image,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.favorite, color: Colors.pink),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              AppStrings.product_name_text,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              AppStrings.product_desc_text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$totalPrice \$",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.pink_color),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: decreaseQuantity,
                      icon: Icon(Icons.remove, color: AppColors.pink_color),
                    ),
                    Text(
                      "$quantity",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: increaseQuantity,
                      icon: Icon(Icons.add, color: AppColors.pink_color),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            DefaultButton(
              btn_color: AppColors.pink_color,
              text_btn_color: AppColors.white,
              H_padding: 130,
              V_padding: 13,
              onPressed: () {},
              btn: Row(
                children: [
                  SvgPicture.asset(AppAssets.basket_icon),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppStrings.Add_cart_text_btn,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              btn_border_color: AppColors.pink_color,
            )
          ],
        ),
      ),
    );
  }
}
