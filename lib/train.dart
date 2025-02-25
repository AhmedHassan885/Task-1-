import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Train2 extends StatelessWidget {
  Train2({super.key});
  // ignore: non_constant_identifier_names
  List<int>? Countries = [11, 12, 13];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 400,
              child: DropdownButton<int>(
                  alignment: Alignment.center,
                  isExpanded: true,
                  hint: Text("select your num"),
                  items: Countries!.map(
                    (int value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Row(
                          children: [
                            Text("$value"),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.star)
                          ],
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {
                    // ignore: avoid_print
                    print(value);
                  }),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            width: 300,
            height: 300,
            child: Image.network(
              "https://th.bing.com/th/id/OIP.uK930mcS5bAdzo3HlE1uzwHaE8?w=277&h=184&c=7&r=0&o=5&pid=1.7",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
