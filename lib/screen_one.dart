import 'package:course/screen_two.dart';
import 'package:course/task.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen one"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            Data data = Data(name: "AHMED", age: 22);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Screen2(
                data: data,
              );
            }));
          },
          child: Text("GO TO 2"),
        ),
      ),
    );
  }
}

class Data {
  late String name;
  late int age;
  Data({required this.name, required this.age});
}
