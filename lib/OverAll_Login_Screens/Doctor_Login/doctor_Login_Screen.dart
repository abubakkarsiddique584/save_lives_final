import 'package:flutter/material.dart';
import 'package:save_lives_final/Model/Custom_Buttons/custom_Buttons.dart';
import 'package:save_lives_final/Model/Custom_TextFields/searchBar_TextField.dart';

class doctor_Login_Screen extends StatefulWidget {
  const doctor_Login_Screen({Key? key}) : super(key: key);

  @override
  State<doctor_Login_Screen> createState() => _doctor_Login_ScreenState();
}

class _doctor_Login_ScreenState extends State<doctor_Login_Screen> {
  @override
  final doctor_LogIn_Id = TextEditingController();
  bool value = true;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('login2.png'),
            fit: BoxFit.cover),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.only(
          left: 35,
          right: 35,
          top: MediaQuery.of(context).size.height * 0.05),
      child: ListView(
        children: [
          Center(
            child: Text(
              "Doctor Login",

              style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.bold,

              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),

          login_TextFields(
              controller: doctor_LogIn_Id,
              hintName: "CNIC"
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          login_TextFields(
              controller: doctor_LogIn_Id,
              hintName: "Password"
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                    hoverColor: Colors.red,
                    activeColor: Colors.blue,
                    splashRadius: 10,

                    value: value,
                    onChanged: (bool) {
                      setState(() {
                        value = false;
                      });
                    },
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: (){},
                  child: Text("Forgot password?")
              )
            ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          black_Outlined_Button(
            onPressed: () {  },
            icon: Icons.arrow_forward_ios_outlined,
            title: 'Log in',


          )
        ],
      ),
    );
  }
}
