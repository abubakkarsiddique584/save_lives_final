
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 50.0,
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              shrinkWrap: true,
              children: generateNumbers().map((int i) {
                return Text(i.toString());
              }).toList(),
            )
          ],
        ),
      ),
    );
  }

  List<int> generateNumbers() => List<int>.generate(30, (i) => i + 1);
}