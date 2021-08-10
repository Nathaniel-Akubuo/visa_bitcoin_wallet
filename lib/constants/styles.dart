import 'package:flutter/material.dart';

const kLightBlue = Color(0xff1672A5);
const kAppBarColor = Color(0xff115880);
const kDarkerBlue = Color(0xff093248);
const kDarkestBlue = Color(0xff031926);
const kUnselectedItemColor = Color(0xff8CC9FD);
const kSelectedItemColor = Color(0xff0B3953);
const kYellow = Color(0xffFFA200);

var kCircularBorderRadius = BorderRadius.circular(24);

const kPadding = EdgeInsets.symmetric(horizontal: 35, vertical: 20);

const kSegoe =
    TextStyle(fontFamily: 'Segoe', color: Colors.white, fontSize: 18);

const kGeorgia = TextStyle(
    fontFamily: 'Georgia',
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: Colors.white);

const kMSReferenceSansSerif = TextStyle(
    fontFamily: 'MS-Reference-Sans-Serif', color: Colors.white, fontSize: 18);

const kMicrosoftJhengHei = TextStyle(
    fontFamily: 'MicrosoftJhengHei', fontSize: 20, color: Colors.black);

const kButtonTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: kYellow,
    fontSize: 18,
    fontFamily: 'Segoe');

const kConsolas =
    TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Consolas');

const kConsolasTitle = TextStyle(
    fontSize: 25,
    color: Colors.white,
    fontFamily: 'Consolas',
    fontWeight: FontWeight.bold);

const kConsolasSubtitle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Consolas',
    fontSize: 18);

const kLinearGradient = LinearGradient(
    colors: [kDarkestBlue, kDarkerBlue, kLightBlue],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight);

const kCardGradient =
    LinearGradient(colors: [Color(0xff5FADF2), Color(0xff20BE9E)]);

const kButtonGradient =
    LinearGradient(colors: [kDarkestBlue, Color(0xff323E77)]);

const twentyFourBorderRadius = BorderRadius.all(Radius.circular(24));
