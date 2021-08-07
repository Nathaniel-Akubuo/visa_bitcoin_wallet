import 'package:flutter/material.dart';

const kLightBlue = Color(0xff1672A5);
const kDarkerBlue = Color(0xff093248);
const kDarkestBlue = Color(0xff031926);
const kYellow = Color(0xffFFA200);

var kCircularBorderRadius = BorderRadius.circular(24);

const kPadding = EdgeInsets.all(50);

const kSegoe = TextStyle(fontFamily: 'Segoe', color: Colors.white, fontSize: 18);

const kButtonTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: kYellow,
    fontSize: 18,
    fontFamily: 'Segoe');

const kConsolas =
    TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Consolas');

const kLinearGradient = LinearGradient(
    colors: [kDarkestBlue, kDarkerBlue, kLightBlue],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight);
