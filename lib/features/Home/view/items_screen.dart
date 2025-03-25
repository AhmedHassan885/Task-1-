// ignore_for_file: unnecessary_string_escapes

import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/features/Home/view/widgets/category_item.dart';
import 'package:course/features/Home/view/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final List<Map<String, String>> categories = [
    {"title": "Beauty", "image": "assets/images/beauty.png"},
    {"title": "Fashion", "image": "assets/images/fashion.png"},
    {"title": "Kids", "image": "assets/images/kids.png"},
    {"title": "Mens", "image": "assets/images/mens.png"},
    {"title": "Womens", "image": "assets/images/womens.png"},
    {"title": "Gifts", "image": "assets/images/gifts.png"}
  ];
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: SvgPicture.asset(
            AppAssets.logo_icon,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 5),
              Text(AppStrings.all_features_text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  separatorBuilder: (context, index) => SizedBox(width: 15),
                  itemBuilder: (context, index) {
                    return CategoryItem(
                      imagePath: categories[index]["image"]!,
                      title: categories[index]["title"]!,
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              SizedBox(height: 20),
              Text(AppStrings.products_text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.6,
                ),
                itemCount: 4,
                itemBuilder: (context, index) => ProductCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
