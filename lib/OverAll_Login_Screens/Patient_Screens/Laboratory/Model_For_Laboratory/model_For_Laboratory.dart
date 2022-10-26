import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:save_lives_final/Model/Custom_Buttons/custom_Buttons.dart';

class card_For_Laboratory extends StatefulWidget {
  final Function()? onPressed;
  final String title;
  final String subtitle;
  final IconData? rightIcon;
  final IconData? leftIcon;
  final Color? iconContainercolor;

  card_For_Laboratory({
    this.onPressed,
    required this.title,
    required this.subtitle,
    this.leftIcon,
    this.rightIcon,
    this.iconContainercolor,
});
  @override
  State<card_For_Laboratory> createState() => _card_For_LaboratoryState();
}

class _card_For_LaboratoryState extends State<card_For_Laboratory> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(08),
          color: HexColor("FFFFFF")

      ),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                title: Text(widget.title),
                subtitle: Text(widget.subtitle),
                leading: CircleAvatar(
                  backgroundColor: widget.iconContainercolor,
                  child: Icon(widget.rightIcon,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  black_Outlined_Button(onPressed: (){}, title: 'sdfds',  ),
                  blue_Button(title: "sdfd")
                ],
              )

            ],
          )
      ),
    );
  }
}
