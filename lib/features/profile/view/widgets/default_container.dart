import 'package:course/core/helper/my_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefualtContainer extends StatelessWidget {
  const DefualtContainer(
      {super.key,
      required this.prefix,
      required this.name,
      required this.arrow,
      required this.destination});
  final String prefix;
  final String name;
  final String arrow;
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(context, screen: destination);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SvgPicture.asset(prefix),
            SizedBox(
              width: 10,
            ),
            Text(name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            Spacer(),
            SvgPicture.asset(arrow)
          ],
        ),
      ),
    );
  }
}
