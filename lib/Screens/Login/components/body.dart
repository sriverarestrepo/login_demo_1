import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loggin_demo_01/Screens/Login/components/background.dart';
import 'package:loggin_demo_01/Screens/Signup/signup_screen.dart';
import 'package:loggin_demo_01/components/already_have_an_account_acheck.dart';
import 'package:loggin_demo_01/components/rounded_button.dart';
import 'package:loggin_demo_01/components/rounded_input_field.dart';
import 'package:loggin_demo_01/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Login",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.4,
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
                text: "Login",
                press: () {},
              ),
              AlreadyHaveAnAccountCheck(
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

