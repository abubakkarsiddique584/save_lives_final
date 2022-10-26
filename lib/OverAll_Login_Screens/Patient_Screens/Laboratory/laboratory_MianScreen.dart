import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:save_lives_final/Model/Custom_Buttons/custom_Buttons.dart';
import 'package:save_lives_final/Model/Custom_TextFields/searchBar_TextField.dart';
import 'package:save_lives_final/OverAll_Login_Screens/Patient_Screens/Laboratory/Model_For_Laboratory/model_For_Laboratory.dart';

class laboratory_MainScreen extends StatefulWidget {
  const laboratory_MainScreen({Key? key}) : super(key: key);

  @override
  State<laboratory_MainScreen> createState() => _laboratory_MainScreenState();
}

class _laboratory_MainScreenState extends State<laboratory_MainScreen> {
  final laboratory_SearchBar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          custom_IconButoon(onPressed: () {  },
            icon: MdiIcons.phone,

          )
        ],
        title: Text("Lab Test"),
      ),
      body: ListView(
        padding: EdgeInsets.only(
            left: 35,
            right: 35,
            top: MediaQuery.of(context).size.height * 0.05),
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(08),
                    color: HexColor("FFFFFF")

                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: searchBar_TextFields(

                      icon: Icons.search,
                      controller: laboratory_SearchBar,
                      hintName: "Search Test (CT Scan etc)")
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              card_For_Laboratory(title: 'Saidu Laboratory',
                subtitle: '09:00 AM - 09:00 PM',

              )




            ],
          )

        ],
      ),
    );
  }
}
