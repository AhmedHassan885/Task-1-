import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField(
      // ignore: non_constant_identifier_names
      {super.key, this.icon, this.labelText, this.height, this.max_lines});
  final Widget? icon;
  final String? labelText;
  final double? height;
  // ignore: non_constant_identifier_names
  final int? max_lines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
          height: height,
          child: TextFormField(
            maxLines: max_lines,
            style: TextStyle(
                color: Color(0xff24252C),
                fontWeight: FontWeight.w200,
                fontFamily: "Lexend Deca",
                fontSize: 14),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(7),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
                icon: icon,
              labelText:labelText ,
          ),
        ),
      ),
    ));
  }
}
