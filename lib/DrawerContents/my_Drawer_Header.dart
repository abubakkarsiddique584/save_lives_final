import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class my_Drawer_Header extends StatefulWidget {
  const my_Drawer_Header({Key? key}) : super(key: key);

  @override
  State<my_Drawer_Header> createState() => _my_Drawer_HeaderState();
}

class _my_Drawer_HeaderState extends State<my_Drawer_Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('#014E78'),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('saveLives.png'),

              ),
            ),
          ),
          Text("Save LIves", style: TextStyle(color: Colors.white, fontSize: 20), ),
          Text("savelivespk@gmail.com", style: TextStyle(color: Colors.grey[200],fontSize: 14),)
        ],
      ),

    );
  }
}
