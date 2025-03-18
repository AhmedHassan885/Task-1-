import 'package:course/screen_one.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
    required this.data,
  });
  final Data data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen two"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(data.name),
          ),
          Center(
            child: Text("${data.age}"),
          )
        ],
      ),
    );
  }
}
