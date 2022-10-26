import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';




class Styles{
  static ThemeData themeData(bool isDarkTheme, BuildContext context){
    return ThemeData(
        textTheme: TextTheme(


          // fontFamily: 'Roboto',
          // fontSize: 14,
          // fontWeight: FontWeight.bold,
          // overflow: TextOverflow.visible,
          // color: isDarkTheme ?  HexColor("818085"): HexColor("949494"),
          headline1: TextStyle(
              fontFamily: 'Roboto',
              color: isDarkTheme ?  HexColor("#FF0000"): HexColor("#FF0000"),
            fontSize: 45,
            fontWeight: FontWeight.bold
          ),

          headline2: TextStyle(
              fontFamily: 'Roboto',
              color: isDarkTheme ?  HexColor("#014E78"): HexColor("#014E78"),
              fontSize: 45,
              fontWeight: FontWeight.bold
          ),

          headline3: TextStyle(
            fontWeight: FontWeight.bold,
            color: isDarkTheme ?  HexColor("818085"): HexColor("949494"),
            fontSize: 16.0,
          ),

          headline4: TextStyle(
            fontWeight: FontWeight.bold,
            color: isDarkTheme ?  HexColor("014E78"): HexColor("014E78"),
            fontSize: 16.0,
          ),


          headline5: TextStyle(
              fontWeight: FontWeight.bold,
              color: isDarkTheme ?  HexColor("FFA500"): HexColor("FFA500"),
              fontSize: 35
          ),
          headline6:  TextStyle(
              fontWeight: FontWeight.bold,
              color: isDarkTheme ?  HexColor("FFFFFF"): HexColor("000000"), fontSize: 35
          ),


        ),

        // primaryIconTheme: IconThemeData(
        //   color: isDarkTheme ?  HexColor("FFFFFF"): HexColor("000000"),
        // ) ,

        iconTheme: IconThemeData(
          color:  isDarkTheme ?  HexColor("FFFFFF"): HexColor("A3A3A3"),
        ),
        ///////////////////////////////////

        /////////////////////////////////////
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: HexColor("FFFFFF"),
            side: BorderSide(
                color: isDarkTheme ? HexColor("000000") : HexColor("000000"),
                width: 1.0

            ),
          ),
        ),
        shadowColor: isDarkTheme ? Colors.grey.withOpacity(0.0) :Colors.grey.withOpacity(0.07),
        scaffoldBackgroundColor: isDarkTheme ?  HexColor("F7F8FD"): HexColor("FAF9FE"),
        primarySwatch: isDarkTheme ? Colors.orange :Colors.deepPurple,
        primaryColor: isDarkTheme ? HexColor("272729"):  HexColor("FFFFFF"),
        accentColor: Colors.deepPurple,
        backgroundColor: isDarkTheme ? Colors.white: HexColor("000000"),
        indicatorColor: isDarkTheme ? Colors.red: Colors.pink,
        buttonColor: isDarkTheme ? HexColor("FFFFFF"): Colors.red,
        hintColor: isDarkTheme ? HexColor("818085"): HexColor("818085"),
        highlightColor: isDarkTheme ? Color(0xff372901): Color(0xffFCE192),
        hoverColor: isDarkTheme? HexColor("1C1C1C"): HexColor("FFFFFF"),
        focusColor: isDarkTheme ? HexColor("1C1C1C"):  HexColor("FFFFFF"),
        disabledColor: Colors.grey,



        textSelectionTheme: TextSelectionThemeData(
          selectionColor: isDarkTheme? Colors.black: Colors.white,
        ),
        // textSelectionColor: isDarkTheme? Colors.black: Colors.white,
        cardColor: isDarkTheme? Color(0xff151515): Colors.green,
        canvasColor: isDarkTheme? Colors.black: Colors.white,
        brightness: isDarkTheme? Brightness.dark: Brightness.light,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme? ColorScheme.dark(): ColorScheme.light()
        ),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(


          //    selectedItemColor: Colors.pink,
            unselectedItemColor: isDarkTheme ? HexColor("FFA500"): HexColor("FFA500"),
            showUnselectedLabels: true,
            elevation: 10,
            backgroundColor: isDarkTheme ? HexColor("2E2E2E"): HexColor("F7F7F7"),
            selectedLabelStyle: TextStyle(
              color: isDarkTheme ? Colors.yellow: HexColor("ABABAB"),
            )
        ),


        appBarTheme: AppBarTheme(
            centerTitle: true,
            iconTheme: IconThemeData(
              size: 30,
              color: isDarkTheme ? HexColor("014E78"): HexColor("014E78"),
            ),
            titleTextStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: isDarkTheme ? HexColor("014E78"): HexColor("014E78"),
            ),
            color: isDarkTheme ? HexColor("272729"): HexColor("FFFFFF"),
            elevation: 0.0
        )
    );
  }
}