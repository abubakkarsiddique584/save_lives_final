import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:save_lives_final/Model/Custom_TextFields/searchBar_TextField.dart';
import 'package:save_lives_final/OverAll_Login_Screens/patient_HomeScreen.dart';


class show_All_Specialization extends StatefulWidget {
  const show_All_Specialization({Key? key}) : super(key: key);

  @override
  State<show_All_Specialization> createState() =>
      _show_All_SpecializationState();
}

class _show_All_SpecializationState extends State<show_All_Specialization> {
  @override
  final SearchBar = TextEditingController();


  final List<MenuData> menu = [
    MenuData(MdiIcons.doctor, 'Cardiology' ),
    MenuData(Icons.find_in_page_outlined, 'Dentistry'),
    MenuData(Icons.find_in_page_outlined, 'Orthopaedic'),
    MenuData(Icons.upgrade_outlined, 'Nephrology'),
    MenuData(Icons.upgrade_outlined, 'Ophthalmology'),
    MenuData(Icons.play_for_work_outlined, 'Gynecology'),
    MenuData(Icons.play_for_work_outlined, 'infertility'),
    MenuData(Icons.assignment_turned_in_outlined, 'Nephrology'),
    MenuData(Icons.assignment_turned_in_outlined, 'Menu 9'),
    MenuData(Icons.fact_check_outlined, 'Menu 10')
  ];
  List<String> images = [
    "assets/saveLives.png",
    "assets/saveLives.png",
    "assets/saveLives.png",
    "assets/saveLives.png",
    "assets/saveLives.png",
    "assets/saveLives.png",
    "assets/saveLives.png",
    "assets/saveLives.png",
    "assets/saveLives.png",
    "assets/saveLives.png",

  ];


  Widget build(BuildContext context) {

    return


      Scaffold(

        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
              left: 35,
              right: 35,
              top: MediaQuery.of(context).size.height * 0.05),
          child: Center(

            child: Column(
              children: [

                Container(
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(08),
                      color: HexColor("FFFFFF")

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: searchBar_TextFields(
                        controller: SearchBar,
                        hintName: "Find Doctors / Specialitiest"),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),

                Center(
                  child: Text(
                    "Select The Department(s)",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),


                Expanded(
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

                          maxCrossAxisExtent: 400,
                          childAspectRatio: 5 / 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0),
                      itemCount: menu.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return InkWell(

                          child: Container(
                            decoration: BoxDecoration(


                                borderRadius: BorderRadius.circular(08),
                                color: HexColor("FFFFFF")

                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(images[index], height: 50,),

                                // SizedBox(height: 20),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  menu[index].title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                )

              ],
            ),


          ),
        ),

      );

    // return Container(
    //     alignment: Alignment.center,
    //     padding: EdgeInsets.only(
    //         left: 35,
    //         right: 35,
    //         top: MediaQuery
    //             .of(context)
    //             .size
    //             .height * 0.05),
    //     child: Center(
    //       child: Column(
    //         children: [
    //
    //
    //           Container(
    //             decoration: BoxDecoration(
    //
    //                 borderRadius: BorderRadius.circular(08),
    //                 color: HexColor("FFFFFF")
    //
    //             ),
    //             child: Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Column(
    //
    //                 children: [
    //                   Align(
    //                       alignment: Alignment.bottomLeft,
    //                       child: Text("Search for Doctors")),
    //                   SizedBox(
    //                     height: MediaQuery
    //                         .of(context)
    //                         .size
    //                         .height * 0.01,
    //                   ),
    //
    //                   searchBar_TextFields(
    //                       icon: Icons.search,
    //                       controller: SearchBar,
    //                       hintName: "Find Doctors / Specialities"),
    //                   SizedBox(
    //                     height: MediaQuery
    //                         .of(context)
    //                         .size
    //                         .height * 0.01,
    //                   ),
    //
    //                   Expanded(
    //                       child: GridView.builder(
    //                           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //                               maxCrossAxisExtent: 200
    //
    //                           ),
    //                           itemBuilder: (BuildContext ctx, index) {
    //                             return InkWell(
    //                               child: Column(
    //                                 mainAxisAlignment: MainAxisAlignment.center,
    //                                 crossAxisAlignment: CrossAxisAlignment
    //                                     .center,
    //                                 children: [
    //                                   Text(
    //                                     menu[index].title,
    //                                     textAlign: TextAlign.center,
    //                                     style: TextStyle(
    //                                         fontSize: 12,
    //                                         color: Colors.black),
    //                                   ),
    //                                 ],
    //                               ),
    //                             );
    //                           })
    //                   )
    //
    //
    //                 ],
    //               ),
    //             ),
    //           ),
    //
    //
    //         ],
    //       ),
    //     ),
    //
    //
    // );
  }
}
