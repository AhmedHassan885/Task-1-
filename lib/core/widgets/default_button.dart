// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key,
      required this.btn_color,
      required this.text_btn_color,
      required this.H_padding,
      required this.V_padding,
      required this.onPressed,
      required this.btn,
      required this.btn_border_color});
  final Color btn_color;
  final Color btn_border_color;
  final Color text_btn_color;
  final double H_padding;
  final double V_padding;
  final void Function() onPressed;
  final Widget btn;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: btn_border_color)),
      padding: EdgeInsets.symmetric(horizontal: H_padding, vertical: V_padding),
      textColor: text_btn_color,
      color: btn_color,
      onPressed: onPressed,
      child: btn,
    );
  }
}
