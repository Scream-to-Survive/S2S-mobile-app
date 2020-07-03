import 'package:flutter/material.dart';

const kColor2 = Color(0xff0b8793);
const kPrimaryColor = Color(0xff00366F);
//const  kPrimaryColor= Color(0xff182848);
const kAlertColor = Color(0xFFFF6C6C);
const kInactiveColor = Colors.grey;

const kGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    kPrimaryColor,
    kColor2,
  ],
);

const KNonValidSuffix = Text(
  '*',
  style: TextStyle(
    color: Colors.red,
    fontSize: 18,
  ),
);

const kValidSuffix = Icon(
  Icons.check,
  color: Colors.blue,
  size: 17,
);

// regular expressions
final textRegExp = RegExp(r'^[a-zA-Z]+$');
final numberRegExp = RegExp(r'^[0-9]+$');
final emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
RegExp passwordRegExp =
    new RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

const avatarPlaceholder =
    AssetImage('assets/images/profilePicturePlaceholder.jpg');
