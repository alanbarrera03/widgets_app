import 'package:flutter/material.dart';

const colorList = <Color>[

  Colors.blue,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.grey,
  Colors.purple,
  Colors.pink,
  Colors.teal,
  Colors.red,
  Colors.deepPurple,
  Colors.cyan,
  Colors.indigo,
  Colors.lime,

];

class AppTheme {

  final int selectedColor;
  final bool isDarkMode;

  AppTheme({

    this.selectedColor = 0,
    this.isDarkMode = false

  }) : assert( selectedColor >= 0, 'Selected color must be greater then 0' ),
       assert( selectedColor < colorList.length,
              'Selected color must be less or equal than ${ colorList.length - 1 }' );

  ThemeData getTheme() => ThemeData(

    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: const AppBarTheme(

      centerTitle: false

    )

  );

}