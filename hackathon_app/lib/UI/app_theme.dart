import 'package:flutter/material.dart';
import 'package:hackathon_app/UI/size_config.dart';

class AppTheme {
  static const Color appBackgroundColor = Color(0xffFAFCFE);
  static const Color accentColor = Colors.lightBlueAccent;

  static const Color lightTextColor = Colors.white;
  static const Color darkTextColor = Colors.black;
  static const Color subTitleLightTextColor = Colors.grey;
  static const Color boxColor = Color(0xfff2f2f2);

  static final ThemeData lightTheme = ThemeData(
    buttonColor: Colors.lightBlue,
    backgroundColor: AppTheme.appBackgroundColor,
    accentColor: AppTheme.accentColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final LinearGradient boxGradient = LinearGradient(
    colors: [
      Color(0xffB888F0),
      Color(0xffEC9FAA),
      Color(0xeeECA65B),
    ],
  );

  static final ButtonThemeData _buttonTheme = ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: Color(0xff5ac8fa),
    highlightColor: Color(0xff5ac8fa),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  );

  static final EdgeInsets inputPadding =
      EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0);

  static final OutlineInputBorder inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
  );

  static final TextTheme lightTextTheme = TextTheme(
    title: _titleLight,
    subtitle: _subTitleLight,
    button: _buttonLight,
    body1: _body1Light,
    body2: _body2Light,
    display1: _display1Light,
    display2: _display2Light,
  );

  static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 5.6 * SizeConfig.widthMultiplier,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: AppTheme.subTitleLightTextColor,
    fontSize: 3.7 * SizeConfig.widthMultiplier,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: AppTheme.lightTextColor,
    fontSize: 18,
  );

  static final TextStyle _body1Light = TextStyle(
    color: Colors.black,
    fontSize: 3.8 * SizeConfig.widthMultiplier,
  );

  static final TextStyle _body2Light = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 4.5 * SizeConfig.widthMultiplier,
  );

  static final TextStyle _display1Light = TextStyle(
    fontSize: 18.0,
    color: Colors.white70,
  );

  static final TextStyle _display2Light = TextStyle(
    fontSize: 4.6 * SizeConfig.widthMultiplier,
    color: Colors.white,
  );
}
