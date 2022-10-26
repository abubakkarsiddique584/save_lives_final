import 'package:flutter/material.dart';



Widget menuItem(int id, String title, IconData icon, bool selected) {
  return Material(
    child: InkWell(
      onTap: (){},
      child: Padding(padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Icon(
               icon, size: 20, color: Colors.black,),),

            Expanded(
              flex: 1,
              child:
              Text(title,
              style: TextStyle(color: Colors.black, fontSize: 16),),),


          ],
        ),
      ),

    ),
  );
}


enum DrawerSelection{
  dashboard,
  contact,
  events,
  setting

}