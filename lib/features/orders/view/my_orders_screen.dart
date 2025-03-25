// ignore_for_file: deprecated_member_use

import 'package:course/core/helper/my_navigator.dart';
import 'package:course/core/localization/App_Strings.dart';
import 'package:course/core/resource%20manager/app_assets.dart';
import 'package:course/core/resource%20manager/app_colors.dart';
import 'package:course/features/orders/view/completed_order_screen.dart';
import 'package:course/features/orders/view/order_details.dart';
import 'package:course/features/orders/view/widgets/tabbar_container.dart';
import 'package:course/features/orders/view/widgets/tabbar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(dividerColor: AppColors.white, tabs: [
            Tab(
                child: TabbarContainer(
              text: AppStrings.active_text,
              index: 0,
            )),
            Tab(
                child: TabbarContainer(
              text: AppStrings.completed_text,
              index: 1,
            )),
            Tab(
                child: TabbarContainer(
              text: AppStrings.canceled_text,
              index: 2,
            ))
          ]),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset(AppAssets.arrow_back_icon)),
          centerTitle: true,
          title: Text(
            AppStrings.my_orders_text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        body: Container(
          height: 180,
          padding: EdgeInsets.all(15),
          child: TabBarView(children: [
            TabbarView(
              showButton: true,
              onpressed: () {
                navigateTo(context, screen: OrderDetails());
              },
            ),
            TabbarView(
              showButton: false,
              text: "✅ Order Delivered",
              onpressed: () {
                navigateTo(context, screen: CompletedOeder());
              },
            ),
            TabbarView(
              showButton: false,
              text: "❎ Order Cancelled",
              onpressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
