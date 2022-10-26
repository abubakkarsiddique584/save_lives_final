 import 'package:flutter/material.dart';
 import 'package:hexcolor/hexcolor.dart';

 class scrollable_Pictures extends StatefulWidget {
  const scrollable_Pictures({Key? key}) : super(key: key);

  @override
  State<scrollable_Pictures> createState() => _scrollable_PicturesState();
 }

 class _scrollable_PicturesState extends State<scrollable_Pictures> {
  @override
  Widget build(BuildContext context) {
    return Container(

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
              height: MediaQuery.of(context).
              size.
              height * 0.01,
            ),
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  rectangular_Picture(
                    title: 'Hospital 1',
                  ),
                  rectangular_Picture(
                    title: 'Hospital 2',
                  ), rectangular_Picture(
                    title: 'Hospital 3',
                  ), rectangular_Picture(
                    title: 'Hospital 4',
                  ), rectangular_Picture(
                    title: 'Hospital 5',
                  ), rectangular_Picture(
                    title: 'Hospital 6',
                  ), rectangular_Picture(
                    title: 'Hospital 7',
                  ), rectangular_Picture(
                    title: 'Hospital 8',
                  ),
                  
                ],
              ),
            )
          ],
          
        ),
      ),
      
    );
  }
 }


 class rectangular_Picture extends StatefulWidget {
  final Function()? onTap;
  final String title;
  rectangular_Picture({
    required this.title,
    this.onTap
 });
  @override
  State<rectangular_Picture> createState() => _rectangular_PictureState();
 }

 class _rectangular_PictureState extends State<rectangular_Picture> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('saveLives.png',width: 100,),
            SizedBox(height: 10,),
            Text(widget.title)
          ],
        ),
      ),
    );
  }
 }
