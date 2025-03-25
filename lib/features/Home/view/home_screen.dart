import 'package:carousel_slider/carousel_slider.dart';
import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/features/Home/view/widgets/category_item.dart';
import 'package:course/features/Home/view/widgets/product_card.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> categories = [
    {"title": "Beauty", "image": "assets/images/beauty.png"},
    {"title": "Fashion", "image": "assets/images/fashion.png"},
    {"title": "Kids", "image": "assets/images/kids.png"},
    {"title": "Mens", "image": "assets/images/mens.png"},
    {"title": "Womens", "image": "assets/images/womens.png"},
    {"title": "Gifts", "image": "assets/images/gifts.png"}
  ];
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  int currentIndex = 0;
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
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: TextStyle(
                        color: AppColors.search_color,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    hintText: AppStrings.search_text,
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.search_color,
                    ),
                    border: InputBorder.none),
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
              CarouselSlider(
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  // reverse: true,
                  height: 300.0,
                  autoPlay: true,
                  aspectRatio: 1,
                  viewportFraction: 1,
                  autoPlayCurve: Curves.ease,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                items: [
                  1,
                  2,
                  3,
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(AppAssets.carousel_image),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 40, horizontal: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "50-40% OFF",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.white),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Now in (product)",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.white),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "All colours",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.white),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      side: const BorderSide(
                                          color: AppColors.white, width: 1),
                                    ),
                                    onPressed: () {},
                                    child: SizedBox(
                                      width: 120,
                                      child: Row(
                                        children: [
                                          Text(
                                            AppStrings.Shop_now_text_btn,
                                            style: TextStyle(
                                                color: AppColors.white),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.arrow_forward_rounded,
                                            color: AppColors.white,
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ));
                    },
                  );
                }).toList(),
              ),
              Center(
                  child: DotsIndicator(
                      dotsCount: 3, position: currentIndex.toDouble())),
              SizedBox(height: 20),
              Text(AppStrings.recommende_text,
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
                itemCount: 2,
                itemBuilder: (context, index) => ProductCard(),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
