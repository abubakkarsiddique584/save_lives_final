import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class custom_IconButoon extends StatefulWidget {
  final IconData icon;
  final Function()? onPressed;


  custom_IconButoon({
    required this.onPressed,
    required this.icon
});
  @override
  State<custom_IconButoon> createState() => _custom_IconButoonState();
}

class _custom_IconButoonState extends State<custom_IconButoon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: widget.onPressed,
        icon: Icon(widget.icon, ),
    );
  }
}


//////////////////////////BLACK OUTLINED BUTTON///////////////////////////
class black_Outlined_Button extends StatefulWidget {
  final String title;
  final Widget? loadingIcon;
  final Function()? onPressed;

  // double size;

  black_Outlined_Button({

    required this.onPressed,
    required this.title,
    this.loadingIcon,
  });

  @override
  State<black_Outlined_Button> createState() => _black_Outlined_ButtonState();
}

class _black_Outlined_ButtonState extends State<black_Outlined_Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.height * 0.055,
      // width: MediaQuery.of(context).size.width * 0.6,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            // side: BorderSide(color: HexColor("CFCFCF"),
            //     width: 1.0
            // ),
            elevation: 10,


            shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(8),
            ),

          ),

          onPressed: widget.onPressed,
          child:
          Text(widget.title, style: TextStyle(
            color: HexColor("000000"),

          ),),
      ),
    );

  }
}





/////////////////////BLUE BUTTON////////////////

class blue_Button extends StatefulWidget {
  final Function()? onPressed;
  final String title;


  blue_Button({
    required this.title,
    this.onPressed
});
  @override
  State<blue_Button> createState() => _blue_ButtonState();
}

class _blue_ButtonState extends State<blue_Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // side: BorderSide(color: HexColor("CFCFCF"),
        //     width: 1.0
        // ),
        elevation: 10,
        primary: HexColor("01507B"),
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(8),
        ),

      ),
        onPressed: widget.onPressed,
        child:  Text(widget.title, style: TextStyle(
          color: HexColor("000000"),

        ),),
    );
  }
}
