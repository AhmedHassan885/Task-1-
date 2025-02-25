import 'package:course/config/app_assets.dart';
import 'package:course/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dropdownItems = [
      {"title": "Option 1", "subtitle": "Hello!"},
      {"title": "Option 2", "subtitle": "Hello!"},
      {"title": "Option 3", "subtitle": "Hello!"},
      {"title": "Option 4", "subtitle": "Hello!"},
    ];

    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            ImageAssets.palstine_image,
            fit: BoxFit.cover,
            width: 447,
            height: 300,
          ),
          SizedBox(height: 30),
          DefaultContainer(icon: Icon(Icons.person_3_outlined), title: "Update profile"),
          SizedBox(height: 20),
          DefaultContainer(icon: SvgPicture.asset(ImageAssets.history_icon), title: "History"),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 65,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                icon: SvgPicture.asset(ImageAssets.arrow_bottom),
                padding: EdgeInsets.symmetric(horizontal: 3),
                alignment: Alignment.centerLeft,
                isExpanded: true,
                hint: Text(
                  "Selected Option",
                  style: TextStyle(
                    color: AppColors.text_black,
                    fontFamily: "Lexend Deca",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                items: dropdownItems.asMap().entries.map((entry) {
                  int index = entry.key;
                  var item = entry.value;
                  return DropdownMenuItem(
                    value: index,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          child: Image.asset(ImageAssets.flag_image),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["subtitle"]!,
                              style: TextStyle(
                                color: Color(0xff24252C),
                                fontFamily: "Lexend Deca",
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              item["title"]!,
                              style: TextStyle(
                                color: Color(0xff24252C),
                                fontFamily: "Lexend Deca",
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({super.key, required this.icon, required this.title});
  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          icon,
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: AppColors.text_black,
              fontFamily: "Lexend Deca",
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          Spacer(),
          SvgPicture.asset(ImageAssets.arrow_right),
        ],
      ),
    );
  }
}
