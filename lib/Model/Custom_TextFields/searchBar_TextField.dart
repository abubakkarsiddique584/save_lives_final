import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class searchBar_TextFields extends StatelessWidget {
  final TextEditingController controller;
  final String hintName;
  IconData? icon;
  bool isObscureText;

  searchBar_TextFields({
    required this.controller,
    this.icon,
    required this.hintName,
    this.isObscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(08),
        color: Theme.of(context).primaryColor,

      ),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(08),
              borderSide: BorderSide(
                  width: 1,

                color: HexColor("#CFCFCF"),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(08),
              borderSide: BorderSide(
                width: 1,
                color: HexColor("014E78"),
              ),
            ),
            hintText: hintName,
            suffixIcon: Icon(icon),
            iconColor: Colors.white,
            hintStyle: TextStyle(),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: HexColor("014E78"),
              ),
              borderRadius: BorderRadius.circular(25),
            )),
      ),
    );
  }
}




class login_TextFields extends StatelessWidget {
  final TextEditingController controller;
  final String hintName;
  IconData? icon;
  bool isObscureText;

  login_TextFields({
    required this.controller,
    this.icon,
    required this.hintName,
    this.isObscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,

      ),
      child: TextFormField(

        controller: controller,
        obscureText: isObscureText,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            enabledBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 1,

                color: HexColor("000000"),
              ),
            ),
            focusedBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 1,
                color: HexColor("000000"),
              ),
            ),
            hintText: hintName,
            suffixIcon: Icon(icon),
            iconColor: Colors.black,
            hintStyle: TextStyle(),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: HexColor("000000"),
              ),
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}

