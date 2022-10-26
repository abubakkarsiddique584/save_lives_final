import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:save_lives_final/Model/Custom_Buttons/custom_Buttons.dart';
import 'package:save_lives_final/OverAll_Login_Screens/Patient_Screens/Show_All_%20Specialization/show_All_Specialization.dart';
class scrollable_Avator extends StatefulWidget {
  const scrollable_Avator({Key? key}) : super(key: key);

  @override
  State<scrollable_Avator> createState() => _scrollable_AvatorState();
}

class _scrollable_AvatorState extends State<scrollable_Avator> {
  @override
  Widget build(BuildContext context) {
return    Container(
  width: double.infinity,
  decoration: BoxDecoration(

      borderRadius: BorderRadius.circular(08),
      color: HexColor("FFFFFF")

  ),

  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("I'm looking for"),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              circleAvator(
                title: 'Doctor 1',),
              circleAvator(
                title: 'Doctor 2',),
              circleAvator(
                title: 'Doctor 3',),
              circleAvator(
                title: 'Doctor 4',),
              circleAvator(
                title: 'Doctor 5',),
              circleAvator(
                title: 'Doctor 6',),
              circleAvator(
                title: 'Doctor 7',)

            ],
          ),
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),

        black_Outlined_Button(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const show_All_Specialization()));
        },
          title: 'All Specializations',
          icon: Icons.more_horiz_sharp,)


      ],
    ),
  ),
);
  }
}






class circleAvator extends StatefulWidget {
  final Function()? onTap;
  final String title;

  circleAvator({
    this.onTap,
    required this.title,
  });

  @override
  State<circleAvator> createState() => _circleAvatorState();
}

class _circleAvatorState extends State<circleAvator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 33,
              backgroundColor: Colors.black,

            ),
            SizedBox(height: 10,),
            Text(widget.title)
          ],
        ),
      ),
    );
  }
}
