import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loggin_demo_01/constants.dart';


class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  
  const SocialIcon({
    Key key, 
    this.iconSrc, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: KPrimaryLightColor,
          ),
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(
          iconSrc,
          width: 15,
          height: 15,
        ),
      ),
    );
  }
}
