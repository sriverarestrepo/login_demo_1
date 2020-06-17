import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loggin_demo_01/Screens/Login/login_screen.dart';
import 'package:loggin_demo_01/Screens/Signup/components/background.dart';
import 'package:loggin_demo_01/Screens/Signup/components/or_divider.dart';
import 'package:loggin_demo_01/Screens/Signup/components/social_icon.dart';
import 'package:loggin_demo_01/components/already_have_an_account_acheck.dart';
import 'package:loggin_demo_01/components/rounded_button.dart';
import 'package:loggin_demo_01/components/rounded_input_field.dart';
import 'package:loggin_demo_01/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Background(
     child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
              Text("Sign Up",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.3,
              ),
              SizedBox(height: size.height * 0.02),
               RoundedInputField(
                hintText: "Correo",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "Sign Up",
                press: () {},
              ),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      }
                    )
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: (){},
                  ),
                  SocialIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: (){},
                  ),
                  SocialIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: (){},
                  ),
                ],
              )
          ],
        ),
     ),
    );

  }
}
