import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:save_lives_final/OverAll_Login_Screens/Admin_Login/admin_Login_Screen.dart';

import 'Doctor_Login/doctor_Login_Screen.dart';


class main_Login_Page extends StatefulWidget {
  @override
  main_Login_PageState createState() => main_Login_PageState();
}

class main_Login_PageState extends State<main_Login_Page> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        body: Column(
          children: <Widget>[
            // construct the profile details widget here
          

            // the tab bar with two items
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(MdiIcons.account),
                    ),
                    Tab(
                      icon: Icon(MdiIcons.doctor),
                    ),
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  admin_Login_Screen(),
                  doctor_Login_Screen(),
                  // first tab bar view widget


                  // second tab bar viiew widget

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}