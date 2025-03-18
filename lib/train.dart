import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Train2 extends StatelessWidget {
  Train2({super.key});
  // ignore: non_constant_identifier_names
  final List<String> Countries = [
    "EG",
    "FR",
    "GER",
    "USA",
    "Uk",
    "MOZ",
    "ZIM",
    "KK",
    "GG",
    "JJ",
    "LL"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      SizedBox(
        height: 200,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return defaultcont(
                country: Countries[index],
                ontap: () {
                  print("horizontal tap");
                },
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: Countries.length),
      ),
      SizedBox(
        height: 600,
        child: ListView.separated(
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return defaultcont(
                country: Countries[index],
                ontap: () {
                  print("Vertical tap");
                },
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: Countries.length),
      ),
    ]));
  }
}

// ignore: camel_case_types
class defaultcont extends StatelessWidget {
  const defaultcont({
    super.key,
    required this.country,
    this.ontap,
  });
  final String country;
  final void Function()? ontap;
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        width: 100,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.pink,
              blurRadius: 2,
              offset: Offset(-5, -5),
              spreadRadius: 10,
              blurStyle: BlurStyle.normal),
          BoxShadow(
              color: Colors.green,
              blurRadius: 8,
              offset: Offset(5, 5),
              spreadRadius: 10)
        ], borderRadius: BorderRadius.circular(20), color: Colors.blue),
        child: Text(country),
      ),
    );
  }
}
