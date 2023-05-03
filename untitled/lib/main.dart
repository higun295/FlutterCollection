import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                "Nicholos - August 10th 2022",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10,0,0,0),
              child: Text(
                "CURRENT WEIGHT",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                    "220 lb",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )
                )
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Container(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: Container(
                      width: 160,
                      height: 160,
                      color: Colors.orange,
                      child: Text(
                        "Last 7 Days",
                        style: TextStyle(
                          fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Container(
                      width: 160,
                      height: 160,
                      color: Colors.orange,
                      child: Text(
                        "Last 30 Days",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: Container(
                      width: 160,
                      height: 160,
                      color: Colors.orange,
                      child: Text(
                        "Last Year",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      child: Container(
                        width: 160,
                        height: 160,
                        color: Colors.orange,
                        child: Text(
                          "Median Weight",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: SizedBox(
              ),
            )
          ],
        ),
      ),
    );
  }
}