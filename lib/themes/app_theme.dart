import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    appBarTheme: AppBarTheme(
      backgroundColor: primary, 
      elevation: 0,
      foregroundColor: Colors.white,),
    listTileTheme: ListTileThemeData(
      iconColor: primary
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)
    ),   
    /*
    iconTheme: IconThemeData(
      color: primary
    )*/
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: primary, 
      elevation: 0,
      foregroundColor: Colors.white,
      ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white), 
      bodySmall: TextStyle(color: Colors.white), 
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white), 
      titleSmall: TextStyle(color: Colors.white),      
    ),
    dividerTheme: DividerThemeData(
      color: Colors.white
    ),
    listTileTheme: ListTileThemeData(
      textColor: Colors.white,
      iconColor: primary
    )
  );
}