import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  const AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,

      text: TextSpan(

        children: [
          TextSpan(

            text: "Save ",
             style: Theme.of(context).textTheme.headline1,
          ),

          TextSpan(

            text: "Lives",
            style: Theme.of(context).textTheme.headline2,


          ),



        ],
      ),    );
  }
}




class AppDescription extends StatelessWidget {
  // final Color? textColor;
  // const AppDescription({this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text("It is a complete hospital app which connect Doctors to Patients",
      style: Theme.of(context).textTheme.headline3,
      //   style: TextStyle(
      //   overflow: TextOverflow.visible,
      //   // color: textColo
      //
      // ),
      textAlign: TextAlign.center,
    );
  }
}



/////////////////////////TEXT PRIAVCY POLICY////////////////
class TermsOfService_PrivacyPolicy extends StatelessWidget {
  // final Color? textColor;
  // const AppDescription({this.textColor});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,

      text: TextSpan(

        children: [
          TextSpan(
            text: "By Clicking Sign up you are agree to the ",
            style: Theme.of(context).textTheme.headline3,
          ),
          TextSpan(
            text: "Privacy Policy ",
            style: Theme.of(context).textTheme.headline4,

            recognizer: new TapGestureRecognizer()
              ..onTap = () => print("Privacy Policy"),
          ),
          TextSpan(text: "and our ",style: Theme.of(context).textTheme.headline3,

          ),
          TextSpan(
            text: "Terms and Conditions ",
            style: Theme.of(context).textTheme.headline4,

            recognizer: new TapGestureRecognizer()
              ..onTap = () => print("Terms and Conditions",),
          ),
          TextSpan(text: "and ",style: Theme.of(context).textTheme.headline3,

          ),
          TextSpan(
            text: "Cookie Statement ",
            style: Theme.of(context).textTheme.headline4,

            recognizer: new TapGestureRecognizer()
              ..onTap = () => print("Cookie Statement"),
          ),
          TextSpan(text: "."),
        ],
      ),
    );
  }
}




class LogIn_Description extends StatefulWidget {
  const LogIn_Description({Key? key}) : super(key: key);

  @override
  State<LogIn_Description> createState() => _LogIn_DescriptionState();
}

class _LogIn_DescriptionState extends State<LogIn_Description> {
  @override
  Widget build(BuildContext context) {
    return Text("To connect this sign in method, the App Id and password must be valid",
      style: Theme.of(context).textTheme.headline3,

      textAlign: TextAlign.center,
    );
  }
}

