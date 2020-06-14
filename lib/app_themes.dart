import 'package:ccr/constants.dart';
import 'package:flutter/material.dart';

enum AppTheme { Default }

final appThemeData = {
  AppTheme.Default: ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Source Sans Pro",
    primaryColor: kPrimaryColor,
    textTheme: TextTheme(
      bodyText2:
          TextStyle(color: kBackgroudColor02, fontSize: 12, letterSpacing: 0.5),
      headline1: TextStyle(
        fontSize: 24,
        color: kBackgroudColor02,
      ),
      headline2: TextStyle(
        fontSize: 20,
        color: kBackgroudColor02,
      ),
      headline3: TextStyle(
        fontSize: 16,
        color: kBackgroudColor03,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        fontSize: 12,
        color: kBackgroudColor02,
        letterSpacing: 0.5,
      ),
    ),
  ),
};
