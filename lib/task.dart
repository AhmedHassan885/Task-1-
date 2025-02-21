import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 70,
              height: 27,
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.plus_one,
                    size: 20,
                  ),
                  Text("Add")
                ],
              ),
            )
          ],
          leading: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
          centerTitle: true,
          title: Text("Today Tasks"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 35),
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "All",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 35),
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Future",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 35),
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Missed",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 35),
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Done",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text("Results"),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(3)),
                    alignment: Alignment.topCenter,
                    width: 14,
                    height: 16,
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.green),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.shopping_bag,
                            size: 16,
                            color: Colors.white,
                          )),
                      Text(
                        "   Work Task",
                        style: TextStyle(fontSize: 13),
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        width: 58,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "Future",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Go to supermarket to buy some milk & \neggs")
                ],
              ),
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.shopping_bag,
                            size: 16,
                            color: Colors.white,
                          )),
                      Text(
                        "   Work Task",
                        style: TextStyle(fontSize: 13),
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        width: 58,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Go to supermarket to buy some milk & \neggs")
                ],
              ),
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(5)),
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.house,
                            size: 16,
                            color: Colors.white,
                          )),
                      Text(
                        "   Home Task",
                        style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        width: 58,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Add new feature for Do It app and \ncommit it")
                ],
              ),
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.person,
                            size: 18,
                            color: Colors.grey[300],
                          )),
                      Text(
                        "   Personal Task",
                        style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Colors.teal[100],
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "In Progress",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 11),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Improve my English skills by trying to \nspeak")
                ],
              ),
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(5)),
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.house,
                            size: 16,
                            color: Colors.white,
                          )),
                      Text(
                        "   Home Task",
                        style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        width: 58,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Add new feature for Do It app and \ncommit it")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
