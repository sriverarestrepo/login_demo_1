import 'package:flutter/material.dart';
import 'package:loggin_demo_01/components/text_field_container.dart';
import 'package:loggin_demo_01/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Contraseña",
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: KPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

