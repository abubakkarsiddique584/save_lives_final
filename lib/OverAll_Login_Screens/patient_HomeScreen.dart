import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:save_lives_final/DrawerContents/my_Drawer_Header.dart';
import 'package:save_lives_final/DrawerContents/my_Drawer_List.dart';
import 'package:save_lives_final/Model/Custom_TextFields/searchBar_TextField.dart';
import 'package:save_lives_final/Model/Scrollable_Contents/scrollable_Avator.dart';
import 'package:save_lives_final/Model/Scrollable_Contents/scrollable_Pictures.dart';
import 'package:save_lives_final/OverAll_Login_Screens/Patient_Screens/Laboratory/laboratory_MianScreen.dart';


class patient_HomeScreen extends StatefulWidget {
  const patient_HomeScreen({Key? key}) : super(key: key);

  @override
  State<patient_HomeScreen> createState() => _patient_HomeScreenState();
}

class _patient_HomeScreenState extends State<patient_HomeScreen> {
    final doctors_SearchBar = TextEditingController();
    @override

  Widget build(BuildContext context) {


      return Scaffold(

        body: ListView(
          padding: EdgeInsets.only(
              left: 35,
              right: 35,
              top: MediaQuery.of(context).size.height * 0.05),
          children: [
            Column(
              children: [


                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),

                      color: HexColor("FFFFFF")

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Image.asset('doctor.jpg',),


                      InkWell(
                        onTap: (){
                      //    Navigator.push(context, MaterialPageRoute(builder: (context)=>const show_All_Specialization()));
                        },
                          child: Image.asset('doctor.jpg',width:  MediaQuery.of(context).size.width * 0.35,)),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const laboratory_MainScreen()));
                          },
                          child: Image.asset('emergency.png',width:  MediaQuery.of(context).size.width * 0.35,)),

                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //
                      //   children: [
                      //     Image.asset('doctor.jpg',width:  MediaQuery.of(context).size.width * 0.25,),
                      //
                      //   ],
                      // )

                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),

                Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(08),
                        color: HexColor("FFFFFF")

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                            child: Text("Search for Doctors")),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),

                        searchBar_TextFields(

                          icon: Icons.search,
                            controller: doctors_SearchBar,
                            hintName: "Find Doctors / Specialitiest")

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),

                scrollable_Avator(),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),

                scrollable_Pictures(),


              ],
            ),

          ],
        ),
      );












    //
    // return
    //
    //
    //    Container(
    //     alignment: Alignment.center,
    //     padding: EdgeInsets.only(
    //         left: 35,
    //         right: 35,
    //         top: MediaQuery.of(context).size.height * 0.05),
    //       child: Center(
    //
    //       child: Column(
    //       children: [
    //         searchBar_TextFields(
    //             icon: Icons.search,
    //             controller: patient_SearchBar,
    //             hintName: 'Quick Search Doctors',
    //           ),
    //
    //           SizedBox(
    //             height: MediaQuery.of(context).size.height * 0.05,
    //           ),
    //
    //           Center(
    //             child: Text(
    //               "Select The Department(s)",
    //               style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //
    //           SizedBox(
    //             height: MediaQuery.of(context).size.height * 0.05,
    //           ),
    //
    //
    //         Expanded(
    //             child: GridView.builder(
    //                 gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    //
    //                     maxCrossAxisExtent: 200,
    //                     childAspectRatio: 2 / 2,
    //                     crossAxisSpacing: 0,
    //                     mainAxisSpacing: 0),
    //                 itemCount: 9,
    //                 itemBuilder: (BuildContext ctx, index) {
    //                   return InkWell(
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         Image.network(images[index], height: 40,),
    //
    //                         // SizedBox(height: 20),
    //                         SizedBox(
    //                           height: 6,
    //                          ),
    //                          Text(
    //                        menu[index].title,
    //                        textAlign: TextAlign.center,
    //                        style: TextStyle(
    //                            fontSize: 12,
    //                            color: Colors.black),
    //                            ),
    //                        ],
    //                      ),
    //
    //
    //                   );
    //                  }),
    //               )
    //
    //     ],
    //    ),
    //
    //
    //    ),
    //
    //   );




  }







}




class MenuData {
  MenuData(this.icon, this.title,
      // this.onPressed
      );
  final IconData icon;
  final String title;
  // final Function()? onPressed;


}

