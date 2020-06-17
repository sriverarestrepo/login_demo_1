import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loggin_demo_01/Screens/Login/login_screen.dart';
import 'package:loggin_demo_01/Screens/Signup/signup_screen.dart';
import 'package:loggin_demo_01/Screens/Welcome/components/background.dart';
import 'package:loggin_demo_01/components/rounded_button.dart';
import 'package:loggin_demo_01/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bienvenido a la aplicacion de Santy",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height * 0.04),
            SvgPicture.asset("assets/icons/chat.svg",
            height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Login",
              press: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Sign Up",
              color: KPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      }
                    )
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}
