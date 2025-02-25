import 'package:course/config/app_assets.dart';
import 'package:course/config/app_colors.dart';
import 'package:course/config/defualt_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class train extends StatelessWidget {
  const train({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset(ImageAssets.arrowBack_icon)),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 85,
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xffE4312B),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(ImageAssets.basket_icon),
                Text(
                  "Delete",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
        centerTitle: true,
        title: Text("Edit Task",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontFamily: "Lexend Deca",
                color: Color(0xff24252C))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                "In Progress\nBelieve you can, and you're halfway there",
                style: TextStyle(
                    fontFamily: "Lexend Deca",
                    fontWeight: FontWeight.w300,
                    fontSize: 14),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultFormField(
              height: 40,
              icon: SvgPicture.asset(
                ImageAssets.home_icon,
                fit: BoxFit.scaleDown,
              ),
             
            ),
            DefaultFormField(
              height: 40,
             
            ),
            DefaultFormField(
              max_lines: 5,
            
            ),
            DefaultFormField(
              height: 40,
              icon: SvgPicture.asset(
                ImageAssets.calender_icon,
                fit: BoxFit.scaleDown,
              ),
             
            ),
            DefaultFormField(
              height: 40,
              icon: SvgPicture.asset(
                ImageAssets.calender_icon,
                fit: BoxFit.scaleDown,
              ),
             
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding:
                        EdgeInsets.symmetric(horizontal: 135, vertical: 10),
                    elevation: 7,
                    backgroundColor: AppColors.darkGreen),
                child: Text(
                  "Mark as Done",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Lexend Deca",
                      fontSize: 19),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 12),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: AppColors.darkGreen, width: 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding:
                        EdgeInsets.symmetric(horizontal: 160, vertical: 10)),
                onPressed: () {},
                child: Text(
                  "Update",
                  style: TextStyle(
                      color: AppColors.darkGreen,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Lexend Deca",
                      fontSize: 19),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
