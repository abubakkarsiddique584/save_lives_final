import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:save_lives_final/Model/overAll_Colors.dart';
import 'package:save_lives_final/OverAll_Login_Screens/HomePage.dart';
import 'package:save_lives_final/Provider/dark_Theme_Provider.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown]
  );
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();
  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreferenes.getTheme() as bool;

  }
  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }
  Widget build(BuildContext context) {

    return MultiProvider
      (
        providers: [
          ChangeNotifierProvider(create: (_){
            return themeChangeProvider;
          })
        ],

        child: Consumer<DarkThemeProvider>(
            builder: (context, themeData, child) {
              return GetMaterialApp(
                title: "Save_Lives",
                debugShowCheckedModeBanner: false,
                theme:  Styles.themeData(themeChangeProvider.darkTheme, context),

                home: AnimatedSplashScreen(

                  splashTransition: SplashTransition.scaleTransition,

                  splash: Image.asset('saveLives.png',),

                  nextScreen: HomePage(),

                ),

              );

            }
        ));
  }
}
