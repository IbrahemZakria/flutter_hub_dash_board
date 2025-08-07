import 'package:flutter/material.dart';

class Thems {
  static const Color kprimarycolor = Color(0xff1B5E37);
  static const Color kLightprimarycolor = Color(0xff2D9F5D);

  static const Color orange = Color(0xffF4A91F);
  static const Color black = Color(0xff0C0D0D);
  static const Color gray = Color(0xff4E5556);
  static const Color lightgray = Color(0xffF3F5F7);
  static const Color textlightgray = Color.fromARGB(255, 188, 191, 193);

  static TextStyle textStyle23B = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 23,
    color: black,
  );
  static TextStyle textStyle19B = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 19,
    color: Colors.white,
  );
  static TextStyle textStyle16sb = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: black,
  );
  static TextStyle textStyle13re = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Colors.white.withValues(alpha: .8),
  );
  static TextStyle textStyle13b = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 13,
    color: kprimarycolor,
  );
  static TextStyle textStyle19sb = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 19,
    color: Colors.white,
  );
  static TextStyle textStyle16b = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: black,
  );
  static TextStyle textStyle16reg = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: textlightgray,
  );
  static TextStyle textStyle13SB = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 13,
    color: textlightgray,
  );
  static TextStyle textStyle11sB = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11,
    color: kprimarycolor,
  );
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: kprimarycolor,
    fontFamily: "Cairo",
    appBarTheme: AppBarTheme(
      color: Colors.white,
      centerTitle: true,
      titleTextStyle: textStyle19B,
    ),
  );
}
