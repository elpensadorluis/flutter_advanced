import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData mainTheme() {
  return ThemeData(
      primaryColor: colorPrimary,
      accentColor: colorAccent,
      brightness: Brightness.light,
      errorColor: colorError,
      splashColor: colorPagePrincipalLight,
      scaffoldBackgroundColor: colorPagePrincipalLight,
      fontFamily: 'Roboto',
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: colorPagePrincipalLight,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(headline6: textStyleAppBarLight)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0.0,
          backgroundColor: colorPagePrincipalLight,
          selectedIconTheme: IconThemeData(color: colorAccent, size: 30),
          unselectedIconTheme: IconThemeData(color: Colors.black, size: 30),
          selectedLabelStyle: textStyleBottomBarSelected,
          unselectedLabelStyle: textStyleBottomBarUnselectedLight,
          type: BottomNavigationBarType.fixed),
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: colorTextPrincipal, fontSize: 14,fontFamily: 'Roboto',),
        bodyText2: TextStyle(color: colorTextPrincipal, fontSize: 14,fontFamily: 'Roboto',),
        subtitle1: TextStyle(color: colorDisable, fontSize: 14,fontFamily: 'Roboto',),
        button: TextStyle(color: colorTextPrincipal, fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Roboto',),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: colorAccent,
        disabledColor: colorDisable,
      ));
}

ThemeData darkTheme() {
  return ThemeData(
      primaryColor: colorPrimary,
      accentColor: colorAccent,
      brightness: Brightness.dark,
      errorColor: colorError,
      splashColor: colorPagePrincipalDark,
      scaffoldBackgroundColor: colorPagePrincipalDark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: colorDisable,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: TextTheme(headline6: textStyleAppBarDark)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0.0,
          backgroundColor: colorDisable,
          selectedLabelStyle: textStyleBottomBarSelected,
          unselectedLabelStyle: textStyleBottomBarUnselectedDark,
          selectedIconTheme: IconThemeData(color: colorAccent, size: 30),
          unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
          type: BottomNavigationBarType.fixed),
      iconTheme: IconThemeData(color: Colors.white),
      fontFamily: 'Roboto',
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Roboto',),
        bodyText2: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Roboto',),
        subtitle1: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'Roboto',),
        button: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Roboto',),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: colorAccent,
        disabledColor: colorDisable,
      ));
}

const textStyleAppBarLight = TextStyle(color: colorTextPrincipal, fontSize: 16, fontFamily: "Roboto");
const textStyleAppBarDark = TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Roboto");
const textStyleBottomBarSelected= TextStyle(color: colorAccent, fontSize: 14, fontFamily: "Roboto");
const textStyleBottomBarUnselectedLight= TextStyle(color: colorTextPrincipal, fontSize: 14, fontFamily: "Roboto");
const textStyleBottomBarUnselectedDark = TextStyle(color: Colors.white, fontSize: 14, fontFamily: "Roboto");
const textStyleFlatAccentButton14= TextStyle(color: colorAccent, fontWeight: FontWeight.bold, fontSize: 14, fontFamily: "Roboto");
