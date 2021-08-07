import 'package:flutter/material.dart';

const lightBlue = Color(0xff1672A5);
const darkerBlue = Color(0xff093248);
const darkestBlue = Color(0xff031926);
const yellow = Color(0xffFFA200);

var circularBorderRadius = BorderRadius.circular(24);

const padding = EdgeInsets.all(50);

const segoe = TextStyle(
    fontFamily: 'Segoe',
    color: Colors.white,
    fontSize: 18,);

const consolas =
    TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Consolas');

const gradient = LinearGradient(
    colors: [darkestBlue, darkerBlue, lightBlue],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight);
