import 'package:flutter/material.dart';

class Constants {

  ///////////////colors/////////////////////////////
  static const Color backgroundColor = Color.fromARGB(255, 244, 241, 241);
  static const Color offblack = Color.fromARGB(255, 160, 156, 156);
  static const Color buttoncolor = Color.fromARGB(255, 235, 42, 42);
  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
  static const Color fillcolor = Color.fromARGB(255, 235, 231, 231);


  ///////////////sized/////////////////////////////

  static const SizedBox height20 = SizedBox(
    height: 20,
  );
  static const SizedBox height50 = SizedBox(
    height: 50,
  );
  static const SizedBox height5 = SizedBox(
    height: 5,
  );
}



//////////////////////styles/////////////////////////////////////////

class styles {
  static const TextStyle textfieldstyle =
      TextStyle(color: Constants.offblack, fontSize: 12);
  static const TextStyle profilestyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  static const TextStyle forgotpasswordstyle =
      TextStyle(color: Constants.buttoncolor, fontSize: 12);
  static const TextStyle buttontextstyle =
      TextStyle(color: Constants.white, fontSize: 16);
  static const TextStyle loginstyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w500);
}


//////////////////////lists/////////////////////////////////////////



class ListItems {
  static final List<Map<String, dynamic>> draweritems = [
    {
      "icon": Icons.home,
      "text": 'Home',
      "isSelected": true,
      "onTap": () {},
    },
    {
      "icon": Icons.info,
      "text": 'About Us',
      "isSelected": false,
      "onTap": () {},
    },
    {
      "icon": Icons.lock_outline,
      "text": 'Change Password',
      "isSelected": false,
      "onTap": () {},
    },
    {
      "icon": Icons.article_outlined,
      "text": 'Terms and Conditions',
      "isSelected": false,
      "onTap": () {},
    },
    {
      "icon": Icons.privacy_tip_outlined,
      "text": 'Privacy Policy',
      "isSelected": false,
      "onTap": () {},
    },
    {
      "icon": Icons.logout,
      "text": 'Logout',
      "isSelected": false,
      "onTap": () {},
    }
  ];
}
